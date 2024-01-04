import 'package:weshare/features/user/model/data_model/compound_user_data_model.dart';
import 'package:weshare/features/user/model/data_model/user_profile_model.dart';

class UserStateModel {
  List<String> followers;
  List<String> following;
  UserModel userData;
  List<PostsBySenderid?> friedsSharedPost;
  List<PostsBySenderid?> userPosts;
  List<PostsBySenderid?> tagedPosts;
  UserStateModel(
      {required this.followers,
      required this.following,
      required this.userData,
      required this.friedsSharedPost,
      required this.userPosts,
      required this.tagedPosts});
}
