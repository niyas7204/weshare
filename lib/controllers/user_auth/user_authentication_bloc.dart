import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/data/repository/authentication_service.dart';
part 'user_authentication_event.dart';
part 'user_authentication_state.dart';
part 'user_authentication_bloc.freezed.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  final UserAuthenticationService userAuthenticationService;

  final AlertdiologeWidgets alertdcontroller = Get.put(AlertdiologeWidgets());
  UserAuthenticationBloc(this.userAuthenticationService)
      : super(UserAuthenticationState.initial()) {
    //login event management which controlls the logins business logic
    on<_userLogin>((event, emit) async {
      //checking wether the fields are empty or not
      for (var controller in event.controllers) {
        if (controller.text.isEmpty) {
          return alertdcontroller.warnigAlert('Fields Shouldbe complete');
        }
      }
      //starting the loading state
      emit(state.copyWith(userSignUp: StateResponse.loading()));
      //calling the login implimentation function
      final result = await userAuthenticationService.userLogIn(
          controllers: event.controllers);
      //change the state to success if it is success
      if (result.status == StateStatus.success) {
        emit(state.copyWith(loginState: StateResponse.success(result.data)));
      } //change the state to failure if there is any error
      else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            loginState: StateResponse.error(result.errorMessage)));
      }
    });
    on<_userSignup>((event, emit) async {
      //checking wether the fields are empty or not
      for (var controller in event.controllers) {
        if (controller.text.isEmpty) {
          return alertdcontroller.warnigAlert('Fields Shouldbe complete');
        }
      }
      //validating the password and confirmpassword fields
      if (event.controllers[2].text.trim() !=
          event.controllers[3].text.trim()) {
        return alertdcontroller.warnigAlert('Passwords not match..');
      }
      //starting the loading state
      emit(state.copyWith(userSignUp: StateResponse.loading()));

      final result = await userAuthenticationService.userSignUp(
          controllers: event.controllers);
      //change the state to success if it is success
      if (result.status == StateStatus.success) {
        emit(state.copyWith(userSignUp: StateResponse.success(result.data)));
      } //change the state to failure if there is any error

      else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            userSignUp: StateResponse.error(result.errorMessage)));
      }
    });
    on<_userLogout>((event, emit) async {
      bool confirmation = await alertdcontroller.confirmAlert(
        'Are you sure want to logout',
      );
      if (confirmation) {
        emit(state.copyWith(userSignUp: StateResponse.loading()));
        final result = await userAuthenticationService.userLogout();
        if (result.status == StateStatus.success) {
          emit(state.copyWith(userSignUp: StateResponse.success(null)));
        } else if (result.status == StateStatus.error) {
          emit(state.copyWith(
              userSignUp: StateResponse.error(result.errorMessage)));
        }
      }
    });
  }
}
