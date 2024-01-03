import 'dart:developer';

import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weshare/graphql/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/user_profileservice.dart';
import 'package:weshare/graphql/query/get_all_data_query.dart';
import 'package:weshare/models/compound_user_data_model.dart';
import 'package:weshare/models/user_profile_model.dart';
import 'package:weshare/models/user_state_mode.dart';
import 'package:graphql/client.dart';

class UserDataImplimentation implements CompountService {
  @override
  Future<StateResponse<UserStateModel>> getuser(
      {required String userid}) async {
    log('getuser');
    try {
      log('getuser try');
      final getQuery = GetUserQuery(userId: userid);
      log('query get');
      final queryOption = QueryOptions(
        document: gql(getQuery.query),
      );
      log('option');
      final QueryResult result =
          await GraphQlClientGenaration.graphQLClient.query(queryOption);
      log('user data ${result.toString()}');
      Data userData = Data.fromMap(result.data!);
      log('data converted');
      List<PostsBySenderid> postByFriends = [];
      List<String> followersId = [];
      List<String> followingId = [];
      List<Followers> followers = [];
      List<Following> following = [];
      if (userData.user[0].following != null &&
          userData.user[0].following!.isNotEmpty) {
        following = userData.user[0].following!;

        for (int i = 0; i < following.length; i++) {
          if (following[i].userByHead != null) {
            followingId.add(following[i].userByHead!.userId!);
          }

          if (following[i].userByHead!.postsBySenderid.isNotEmpty) {
            postByFriends.addAll(following[i].userByHead!.postsBySenderid);
          }
        }
      }
      if (userData.user[0].follower != null &&
          userData.user[0].follower!.isNotEmpty) {
        followers.addAll(userData.user[0].follower!);
        for (int i = 0; i < followers.length; i++) {
          if (followers[i].user != null) {
            if (followers[i].user!.userId == null) {}
            followersId.add(followers[i].user!.userId!);
          }
          if (!followingId.contains(followers[i].user!.userId)) {
            if (followers[i].user!.postsBySenderid.isNotEmpty) {
              postByFriends.addAll(followers[i].user!.postsBySenderid);
            }
          }
        }
      }
      List<Tags> tags = userData.user[0].tags!;
      List<PostsBySenderid> tagedPosts = [];
      if (tags.isNotEmpty) {
        for (var tag in tags) {
          tagedPosts.add(tag.post);
        }
      }

      UserModel userDetails = UserModel(
        userid: userData.user[0].userId,
        email: userData.user[0].email,
        userName: userData.user[0].userName,
        profileImage: userData.user[0].profileImage,
      );
      UserStateModel userStateData = UserStateModel(
          followers: followingId,
          following: followingId,
          userData: userDetails,
          friedsSharedPost: postByFriends,
          userPosts: userData.user[0].postsByuser!,
          tagedPosts: tagedPosts);
      return StateResponse.success(userStateData);
    } catch (e) {
      log('get user erro $e');
      return StateResponse.error('failed fetch user posts');
    }
  }
}
