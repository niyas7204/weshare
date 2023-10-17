class UserModel {
  String? userid;
  String? email;
  String? userName;
  String? profileImage;
  List? posts;

  List? following;
  List? followers;

  UserModel({
    required this.userid,
    required this.email,
    required this.userName,
    required this.profileImage,
    required this.posts,
    required this.following,
    required this.followers,
  });
  UserModel.fromMap(Map<String, dynamic> map) {
    userid = map['userId'];
    email = map['email'];
    userName = map['user_Name'];
    profileImage = map['profileImage'];
    posts = map['posts'];
    followers = map['followers'];
    following = map['following'];
  }
  Map<String, dynamic> toMap() {
    return {
      'userId': userid,
      'user_Name': userName,
      'email': email,
      'profileImage': profileImage,
      'posts': posts,
      'followers': followers,
      'following': following
    };
  }
}
