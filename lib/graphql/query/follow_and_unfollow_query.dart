class FollowAndUnfollowMutation {
  final String userId;
  final String accountId;
  FollowAndUnfollowMutation({
    required this.userId,
    required this.accountId,
  });
  String get followMutation {
    return '''mutation insertFollower {
  insert_friends_one(object: {follower: "$userId", head: "$accountId"}) {
    user {
      friends(where: {userByHead: {userId: {_eq: "$accountId"}}}) {
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
  }

  String get unfollowMutation {
    return '''mutation MyMutation {
  delete_friends(where: {follower: {_eq: "$userId"}, head: {_eq: "$accountId"}}) {
    returning {
      head
    }
  }
}''';
  }
}
