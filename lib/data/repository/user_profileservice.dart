import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/models/post_model.dart';
import 'package:weshare/models/user_profile_model.dart';

abstract class UserProfileService {
  Future<StateResponse<UserModel>> getUserProfile({required String userid});
}

abstract class SharedPostService {
  Future<StateResponse<SharedPostModel>> getsharedPosts(
      {required List<String> friends});
}
