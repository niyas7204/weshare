import 'package:weshare/models/compound_user_data_model.dart';
import 'package:weshare/models/user_profile_model.dart';

class UserStateModel {
  List<String> followers;
  List<String> following;
  UserModel userData;
  List<PostsBySenderid?> friedsSharedPost;
  List<PostsBySenderid?> userPosts;
  UserStateModel(
      {required this.followers,
      required this.following,
      required this.userData,
      required this.friedsSharedPost,
      required this.userPosts});
}
