import 'package:weshare/models/compound_user_data_model.dart';
import 'package:weshare/models/user_profile_model.dart';

class UserStateModel {
  UserModel userData;
  List<PostsBySenderid?> friedsSharedPost;
  List<PostsBySenderid?> userPosts;
  UserStateModel(
      {required this.userData,
      required this.friedsSharedPost,
      required this.userPosts});
}

class Friends {
  List<String> followers;
  List<String> following;
  Friends({required this.followers, required this.following});
}
