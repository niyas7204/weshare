class UserList {
  List<UserModel>? userlist;
  UserList({required this.userlist});
  factory UserList.fromMap(Map<String, dynamic> map) {
    List<UserModel> users = List<UserModel>.from(
        map['user']?.map((user) => UserModel.fromMap(user)) ?? []);
    return UserList(userlist: users);
  }
}

class UserModel {
  String? userid;
  String? email;
  String? userName;
  String? profileImage;

  UserModel({
    required this.userid,
    required this.email,
    required this.userName,
    required this.profileImage,
  });
  UserModel.fromMap(Map<String, dynamic> map) {
    userid = map['userId'];
    email = map['email'];
    userName = map['user_Name'];
    profileImage = map['profileImage'];
  }
}
