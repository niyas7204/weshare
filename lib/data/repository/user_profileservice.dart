import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/models/user_state_mode.dart';

abstract class CompountService {
  Future<StateResponse<UserStateModel>> getuser({required String userid});
}

abstract class FollowService {
  Future<StateResponse> followAccount(
      {required String accoutId, required String userId});
  Future<StateResponse> unfollowAccount(
      {required String accoutId, required String userId});
}
