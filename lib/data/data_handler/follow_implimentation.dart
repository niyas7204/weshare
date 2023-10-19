import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/user_profileservice.dart';

class FollowImplimentation implements FollowService {
  @override
  Future<StateResponse> followAccount(
      {required String accoutId, required String userId}) async {
    final String mutation = '''mutation insertFollower {
  insert_friends_one(object: {follower: "$userId", head: "$accoutId"}) {
    head
  }
}
''';
    try {
      final mutationOption = MutationOptions(document: gql(mutation));

      await GraphQlClientGenaration.graphQLClient.mutate(mutationOption);
      return StateResponse.success(null);
    } catch (e) {
      log('follow $e');
      return StateResponse.error('failed to follow');
    }
  }

  @override
  Future<StateResponse> unfollowAccount(
      {required String accoutId, required String userId}) async {
    final String mutation = '''mutation MyMutation {
  delete_friends(where: {follower: {_eq: "$userId"}, head: {_eq: "$accoutId"}}) {
    returning {
      head
    }
  }
}''';
    try {
      final mutationOption = MutationOptions(document: gql(mutation));
      await GraphQlClientGenaration.graphQLClient.mutate(mutationOption);
      return StateResponse.success(null);
    } catch (e) {
      log('follow $e');
      return StateResponse.error('failed to unfollow');
    }
  }
}
