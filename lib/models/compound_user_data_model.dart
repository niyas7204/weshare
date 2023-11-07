class Data {
  List<UserElement> user;

  Data({
    required this.user,
  });

  factory Data.fromMap(Map<String, dynamic> map) {
    List<UserElement> users = List<UserElement>.from(
        map['user']?.map((user) => UserElement.fromMap(user)) ?? []);
    return Data(user: users);
  }
}

class UserElement {
  String? userName;
  String userId;
  String? profileImage;
  String? email;
  List<PostsBySenderid?>? postsByuser;
  List<Following>? following;
  List<Followers>? follower;
  List<Tags>? tags;

  UserElement({
    required this.tags,
    required this.userName,
    required this.userId,
    required this.profileImage,
    required this.email,
    required this.postsByuser,
    required this.following,
    required this.follower,
  });

  factory UserElement.fromMap(Map<String, dynamic> map) {
    List<PostsBySenderid> posts = List<PostsBySenderid>.from(
        map['postsBySenderid']?.map((post) => PostsBySenderid.fromMap(post)) ??
            []);
    List<Following> following = List<Following>.from(
        map['friends']?.map((following) => Following.fromMap(following)) ?? []);
    List<Followers> follower = List<Followers>.from(
        map['friendsByHead']?.map((follower) => Followers.fromMap(follower)) ??
            []);
    List<Tags> tagedPost = List<Tags>.from(
        map['post_tags']?.map((tags) => Tags.fromMap(tags)) ?? []);
    return UserElement(
        userName: map['userName'],
        userId: map['userId'],
        profileImage: map['profileImage'],
        email: map['email'],
        postsByuser: posts,
        following: following,
        follower: follower,
        tags: tagedPost);
  }
}

class Tags {
  PostsBySenderid post;
  Tags({required this.post});
  factory Tags.fromMap(Map<String, dynamic> map) {
    PostsBySenderid posts = PostsBySenderid.fromMap(map['post']);
    return Tags(post: posts);
  }
}

class Following {
  UserByHeadClass? userByHead;

  Following({
    required this.userByHead,
  });

  factory Following.fromMap(Map<String, dynamic> map) {
    return Following(userByHead: UserByHeadClass.fromMap(map['userByHead']));
  }
}

class UserByHeadClass {
  String? userId;
  List<PostsBySenderid> postsBySenderid;

  UserByHeadClass({
    required this.userId,
    required this.postsBySenderid,
  });

  factory UserByHeadClass.fromMap(Map<String, dynamic> map) {
    List<PostsBySenderid> posts = List<PostsBySenderid>.from(
        map['postsBySenderid']?.map((post) => PostsBySenderid.fromMap(post)) ??
            []);
    return UserByHeadClass(
      userId: map['userId'],
      postsBySenderid: posts,
    );
  }
}

class PostsBySenderid {
  String? textFeed;

  String senderName;
  String senderId;
  String postId;

  String? imageFeed;

  PostsBySenderid({
    required this.textFeed,
    required this.senderName,
    required this.senderId,
    required this.postId,
    required this.imageFeed,
  });

  factory PostsBySenderid.fromMap(Map<String, dynamic> map) {
    return PostsBySenderid(
      textFeed: map['textFeed'],
      senderName: map['senderName'],
      senderId: map['senderId'],
      postId: map['postId'],
      imageFeed: map['imageFeed'],
    );
  }
}

class Followers {
  UserByHeadClass? user;

  Followers({
    required this.user,
  });

  factory Followers.fromMap(Map<String, dynamic> map) {
    return Followers(user: UserByHeadClass.fromMap(map['user']));
  }
}

class TagedPost {}
