import 'dart:developer';

import 'package:graphql/client.dart';
import 'package:weshare/client/get.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/user_profileservice.dart';

class FollowImplimentation implements FollowService {
  @override
  Future<StateResponse> followAccount(
      {required String accoutId, required String userId}) async {
    final String mutation = '''mutation insertFollower {
  insert_friends_one(object: {follower: "$userId", head: "$accoutId"}) {
    user {
      friends(where: {userByHead: {userId: {_eq: "$accoutId"}}}) {
        userByHead {
          email
          profileImage
          userId
          user_Name
          postsBySenderid {
            textFeed
            tags
            senderName
            senderId
            postId
            likes
            imageFeed
          }
        }
      }
    }
  }
}
''';

    try {
      final getQuery = GetUserQuery(userId: userId);
      final mutationOption = MutationOptions(
        document: gql(mutation),
        update: (cache, result) {
          final data = cache
              .readQuery(QueryOptions(document: gql(getQuery.query)).asRequest);
          List friends = data!['user'][0]["friends"];
          friends
              .addAll(result!.data!["insert_friends_one"]["user"]["friends"]);
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
      final getQuery = GetUserQuery(userId: userId);

      final mutationOption = MutationOptions(
        document: gql(mutation),
        update: (cache, result) {
          final id = result!.data!["delete_friends"]["returning"][0]["head"];
          final data = cache
              .readQuery(QueryOptions(document: gql(getQuery.query)).asRequest);
          final friends = data!['user'][0]["friends"];
          friends
              .removeWhere((element) => element["userByHEad"]["userId"] == id);
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
