import 'dart:developer';

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

  UserElement({
    required this.userName,
    required this.userId,
    required this.profileImage,
    required this.email,
    required this.postsByuser,
    required this.following,
    required this.follower,
  });

  factory UserElement.fromMap(Map<String, dynamic> map) {
    try {
      List<PostsBySenderid> posts = List<PostsBySenderid>.from(
          map['postsBySenderid']
                  ?.map((post) => PostsBySenderid.fromMap(post)) ??
              []);
      List<Following> following = List<Following>.from(
          map['friends']?.map((following) => Following.fromMap(following)) ??
              []);
      List<Followers> follower = List<Followers>.from(map['friendsByHead']
              ?.map((follower) => Followers.fromMap(follower)) ??
          []);
      return UserElement(
        userName: map['userName'],
        userId: map['userId'],
        profileImage: map['profileImage'],
        email: map['email'],
        postsByuser: posts,
        following: following,
        follower: follower,
      );
    } catch (e) {
      log('userelement $e');
      List<PostsBySenderid> posts = List<PostsBySenderid>.from(
          map['postsBySenderid']
                  ?.map((post) => PostsBySenderid.fromMap(post)) ??
              []);
      List<Following> following = List<Following>.from(
          map['friends']?.map((following) => Following.fromMap(following)) ??
              []);
      List<Followers> follower = List<Followers>.from(map['friendsByHead']
              ?.map((follower) => Followers.fromMap(follower)) ??
          []);
      return UserElement(
        userName: map['userName'],
        userId: map['userId'],
        profileImage: map['profileImage'],
        email: map['email'],
        postsByuser: posts,
        following: following,
        follower: follower,
      );
    }
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
  List<dynamic>? tags;
  String senderName;
  String senderId;
  String postId;
  List<dynamic>? likes;
  String? imageFeed;

  PostsBySenderid({
    required this.textFeed,
    required this.tags,
    required this.senderName,
    required this.senderId,
    required this.postId,
    required this.likes,
    required this.imageFeed,
  });

  factory PostsBySenderid.fromMap(Map<String, dynamic> map) {
    return PostsBySenderid(
      textFeed: map['textFeed'],
      tags: map['tags'],
      senderName: map['senderName'],
      senderId: map['senderId'],
      postId: map['postId'],
      likes: map['likes'],
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
