import 'package:flutter/material.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';

abstract class UserAuthenticationService {
  Future<StateResponse<String>> userSignUp(
      {required List<TextEditingController> controllers});
  Future<StateResponse<String>> userLogIn(
      {required List<TextEditingController> controllers});
}
