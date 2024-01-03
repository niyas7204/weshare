import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weshare/graphql/client/graphql_client.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/authentication_service.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:weshare/models/user_profile_model.dart';

class UserAuthImplimentaion implements UserAuthenticationService {
  final AlertdiologeWidgets alertdcontroller = Get.put(AlertdiologeWidgets());
  @override
  Future<StateResponse<String>> userSignUp(
      {required List<TextEditingController> controllers,
      required String? profile}) async {
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
  insert_user(objects: {email: "${controllers[1].text.trim()}", user_Name: "${controllers[0].text.trim()}", userid: $uid, profileImage: "$profile"}) {
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
      log('user signout');
      return StateResponse.success(null);
    } catch (e) {
      log('sinout error $e');
      return StateResponse.error('SignOut Failed');
    }
  }

//check user login or not
  @override
  Future<StateResponse<String?>> checkLogin() async {
    log('imp enter');
    try {
      log('impl check');
      User? currentUser = FirebaseAuth.instance.currentUser;
      log('check $currentUser');
      if (currentUser != null) {
        return StateResponse.success(currentUser.uid);
      } else {
        log(' no user');
        return StateResponse.error('User not loged');
      }
    } catch (e) {
      log('check erro $e');
      return StateResponse.error('Error on checking login');
    }
  }

  @override
  Future<StateResponse> forgotPassword({required String email}) async {
    try {
      final signInMethods =
          await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
      if (signInMethods.isNotEmpty) {
        await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      } else {
        return StateResponse.error('Email not found');
      }

      return StateResponse.success(null);
    } on FirebaseAuthException catch (e) {
      log(e.message.toString());
      return StateResponse.error('failed to send email to reset ${e.message}');
    } catch (e) {
      return StateResponse.error('failed to send email to reset');
    }
  }
}
