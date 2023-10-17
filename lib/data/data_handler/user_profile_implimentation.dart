import 'dart:developer';
import 'dart:io';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weshare/client/graphql_client.dart';

import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/user_profileservice.dart';

import 'package:weshare/models/user_profile_model.dart';

class UserProfileImplimentation implements UserProfileService {
  @override
  Future<StateResponse<UserModel>> getUserProfile(
      {required String userid}) async {
    final String query = '''query MyQuery {
  user(where: {userId: {_eq: "$userid"}}) {
    user_Name
    email
    followers
    following
    posts
    profileImage
    userId
  }
}
''';
    try {
      final queryOption = QueryOptions(document: gql(query));
      log('try b');
      final QueryResult result =
          await GraphQlClientGenaration.graphQLClient.query(queryOption);

      log('result$result');
      try {
        UserModel userData =
            UserModel.fromMap(result.data!["user"][0] as Map<String, dynamic>);
        return StateResponse.success(userData);
      } catch (e) {
        log(e.toString());
        return StateResponse.error('Network Failure');
      }

      // log('${userData.userName}');
    } on SocketException {
      return StateResponse.error('Network Failure');
    }
  }
}
