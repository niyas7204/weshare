import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/models/user_profile_model.dart';

abstract class SearchAccountService {
  Future<StateResponse<UserList>> searchAccount({required String value});
}
