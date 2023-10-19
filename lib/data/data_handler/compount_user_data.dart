import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:weshare/client/graphql_client.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/data/repository/user_profileservice.dart';
import 'package:weshare/models/compound_user_data_model.dart';
import 'package:weshare/models/user_profile_model.dart';
import 'package:weshare/models/user_state_mode.dart';

class UserDataImplimentation implements CompountService {
  @override
  Future<StateResponse<UserStateModel>> getuser(
      {required String userid}) async {
    final String query = '''query MyQuery {
  user(where: {userId: {_eq: "$userid"}}) {
    user_Name
    userId
    profileImage
    email
    postsBySenderid {
      textFeed
      tags
      senderName
      senderId
      postId
      likes
      imageFeed
    }
    friends {
      userByHead {
        user_Name
        userId
        profileImage
        email
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
    friendsByHead {
      user {
        email
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
''';
    try {
      final queryOption = QueryOptions(document: gql(query));

      final QueryResult result =
          await GraphQlClientGenaration.graphQLClient.query(queryOption);

      Data userData = Data.fromMap(result.data!);

      List<PostsBySenderid> postByFriends = [];
      List<String> followersId = [];
      List<String> followingId = [];

      if (userData.user[0].follower != null &&
          userData.user[0].follower!.isNotEmpty) {
        List<Followers> followers = userData.user[0].follower!;
        for (int i = 0; i < followers.length; i++) {
          followersId.add(followers[i].user!.userId!);
          if (followers[i].user!.postsBySenderid.isNotEmpty) {
            postByFriends.addAll(followers[i].user!.postsBySenderid);
          }
        }
      }
      if (userData.user[0].following != null &&
          userData.user[0].following!.isNotEmpty) {
        List<Following> following = [];

        following = userData.user[0].following!;

        for (int i = 0; i < following.length; i++) {
          followingId.add(following[i].userByHead!.userId!);
          if (following[i].userByHead!.postsBySenderid.isNotEmpty) {
            postByFriends.addAll(following[i].userByHead!.postsBySenderid);
          }
        }
      }
      UserModel userDetails = UserModel(
        userid: userData.user[0].userId,
        email: userData.user[0].email,
        userName: userData.user[0].userName,
        profileImage: null,
      );
      UserStateModel userStateData = UserStateModel(
          userData: userDetails,
          friedsSharedPost: postByFriends,
          userPosts: userData.user[0].postsByuser!);
      return StateResponse.success(userStateData);
    } catch (e) {
      return StateResponse.error('failed fetch user posts');
    }
  }
}
