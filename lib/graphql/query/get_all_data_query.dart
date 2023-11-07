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
      senderName
      senderId
      postId
      imageFeed
    }
    friendsByHead {
      user {
        user_Name
        userId
        profileImage
        email
        postsBySenderid {
          textFeed
          senderName
          senderId
          postId
          imageFeed
        }
      }
    }
    friends {
      userByHead {
        user_Name
        userId
        profileImage
        email
        postsBySenderid {
          textFeed
          senderName
          senderId
          postId
          imageFeed
        }
      }
    }
    post_tags(where: {user_Id: {_eq: "$userId"}}) {
      post {
        imageFeed
        postId
        senderId
        senderName
        textFeed
      }
    }
  }
  }
''';
  }
}
