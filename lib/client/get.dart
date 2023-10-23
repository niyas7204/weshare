class GetUserQuery {
  final String userId;
  GetUserQuery({required this.userId});
  String get query {
    return '''query MyQuery {
  user(where: {userId: {_eq: "$userId"}}) {
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
  }
}
