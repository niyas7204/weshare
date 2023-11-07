import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/models/user_state_mode.dart';

abstract class CompountService {
  Future<StateResponse<UserStateModel>> getuser({required String userid});
}

abstract class FollowService {
  Future<StateResponse> followAccount(
      {required String accountId, required String userId});
  Future<StateResponse> unfollowAccount(
      {required String accountId, required String userId});
}
