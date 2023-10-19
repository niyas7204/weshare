import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/authentication_service.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:weshare/models/user_profile_model.dart';

class UserAuthImplimentaion implements UserAuthenticationService {
  final AlertdiologeWidgets alertdcontroller = Get.put(AlertdiologeWidgets());
  @override
  Future<StateResponse<String>> userSignUp(
      {required List<TextEditingController> controllers}) async {
    UserCredential? credential;
    String? uid;
    try {
      //create a user in firebase using email and password

      credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: controllers[1].text.trim(),
          password: controllers[2].text.trim());

      uid = credential.user!.uid;
    } on PlatformException catch (e) {
      return StateResponse.error('$e');
    } on NetworkException {
      return StateResponse.error('Net work failure');
    } catch (e) {
      return StateResponse.error('user already exist');
    }

    try {
      //mutation to isert user into table
      final String mutation = '''mutation MyMutation {
  insert_user(objects: {email: "${controllers[1].text.trim()}", user_Name: "${controllers[0].text.trim()}", userid: $uid}) {
    returning {
      email
      user_Name
      userId
    }
  }
}''';
      final mutationOption = MutationOptions(document: gql(mutation));

      final result =
          await GraphQlClientGenaration.graphQLClient.mutate(mutationOption);

      UserModel userData = UserModel.fromMap(
          result.data!["insert_user"]["returning"][0] as Map<String, dynamic>);

      return StateResponse.success(userData.userid);
    } on NetworkException {
      return StateResponse.error('Network failure');
    } catch (e) {
      return StateResponse.error('Network failure');
    }
  }

  @override
  Future<StateResponse<String>> userLogIn(
      {required List<TextEditingController> controllers}) async {
    try {
      UserCredential credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(
              email: controllers[0].text.trim(),
              password: controllers[1].text.trim());
      String uid = credential.user!.uid;
      return StateResponse.success(uid);
    } on NetworkException {
      return StateResponse.error('Network error');
    } on FirebaseAuthException {
      return StateResponse.error('Email and Password not match');
    } catch (e) {
      return StateResponse.error('login failed try later..');
    }
  }

  @override
  Future<StateResponse> userLogout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return StateResponse.success(null);
    } catch (e) {
      return StateResponse.error('SignOut Failed');
    }
  }
}
