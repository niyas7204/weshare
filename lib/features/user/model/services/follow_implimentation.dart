import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:weshare/graphql/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/user_profileservice.dart';
import 'package:weshare/graphql/query/follow_and_unfollow_query.dart';
import 'package:weshare/graphql/query/get_all_data_query.dart';

class FollowImplimentation implements FollowService {
  //follow an account
  @override
  Future<StateResponse> followAccount(
      {required String accountId, required String userId}) async {
    final followMutation =
        FollowAndUnfollowMutation(userId: userId, accountId: accountId);

    try {
      final getQuery = GetUserQuery(userId: userId);
      final mutationOption = MutationOptions(
        document: gql(followMutation.followMutation),
        update: (cache, result) {
          final data = cache
              .readQuery(QueryOptions(document: gql(getQuery.query)).asRequest);
          List friends = data!['user'][0]["friends"];
          friends
              .addAll(result!.data!["insert_friends_one"]["user"]["friends"]);
          final updatedData = Map<String, dynamic>.from(data);
          updatedData["user"][0]["friends"] = friends;
          cache.writeQuery(
              QueryOptions(document: gql(getQuery.query)).asRequest,
              data: updatedData);
        },
      );

      final result =
          await GraphQlClientGenaration.graphQLClient.mutate(mutationOption);
      log("added user${result.toString()}");
      return StateResponse.success(null);
    } catch (e) {
      log('follow $e');
      return StateResponse.error('failed to follow');
    }
  }

//unfollow an account
  @override
  Future<StateResponse> unfollowAccount(
      {required String accountId, required String userId}) async {
    try {
      final getQuery = GetUserQuery(userId: userId);
      final followMutation =
          FollowAndUnfollowMutation(userId: userId, accountId: accountId);

      final mutationOption = MutationOptions(
        document: gql(followMutation.unfollowMutation),
        update: (cache, result) {
          final id = result!.data!["delete_friends"]["returning"][0]["head"];
          log('result $result');
          final data = cache
              .readQuery(QueryOptions(document: gql(getQuery.query)).asRequest);
          log('cache data $data');
          final friends = data!["user"][0]["friends"];
          friends
              .removeWhere((element) => element["userByHead"]["userId"] == id);
          final updatedData = Map<String, dynamic>.from(data);
          updatedData["user"][0]["friends"] = friends;
          cache.writeQuery(
              QueryOptions(document: gql(getQuery.query)).asRequest,
              data: updatedData);
        },
        onCompleted: (data) {},
      );
      final result =
          await GraphQlClientGenaration.graphQLClient.mutate(mutationOption);
      log("deleted user${result.toString()}");
      return StateResponse.success(null);
    } catch (e) {
      log('unfollow $e');
      return StateResponse.error('failed to unfollow');
    }
  }
}
