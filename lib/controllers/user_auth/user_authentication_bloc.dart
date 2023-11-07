import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:weshare/components/alert_diologe.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/data/repository/authentication_service.dart';
import 'package:weshare/data/repository/upload_image.dart';
part 'user_authentication_event.dart';
part 'user_authentication_state.dart';
part 'user_authentication_bloc.freezed.dart';

class UserAuthenticationBloc
    extends Bloc<UserAuthenticationEvent, UserAuthenticationState> {
  final UserAuthenticationService userAuthenticationService;
  final UploadPostSeivice uploadPostSeivice;

  final AlertdiologeWidgets alertdcontroller = Get.put(AlertdiologeWidgets());
  UserAuthenticationBloc(this.userAuthenticationService, this.uploadPostSeivice)
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

      emit(state.copyWith(loginState: StateResponse.loading()));
      //calling the login implimentation function
      final result = await userAuthenticationService.userLogIn(
          controllers: event.controllers);
      //change the state to success if it is success
      if (result.status == StateStatus.success) {
        emit(state.copyWith(loginState: StateResponse.success(result.data)));
        emit(state.copyWith(loginState: StateResponse.intial()));
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
      if (event.profile != null) {
        final imageResponse = await uploadPostSeivice.uploadImageToStorage(
            imagefile: event.profile!);

        if (imageResponse.status == StateStatus.success) {
          final result = await userAuthenticationService.userSignUp(
              controllers: event.controllers, profile: imageResponse.data);
          //change the state to success if it is success
          if (result.status == StateStatus.success) {
            emit(
                state.copyWith(userSignUp: StateResponse.success(result.data)));
          } //change the state to failure if there is any error

          else if (result.status == StateStatus.error) {
            emit(state.copyWith(
                userSignUp: StateResponse.error(result.errorMessage)));
          }
        } else if (imageResponse.status == StateStatus.error) {
          emit(state.copyWith(
              userSignUp: StateResponse.error(imageResponse.errorMessage)));
        }
      }
    });
    on<_userLogout>((event, emit) async {
      bool confirmation = await alertdcontroller.confirmAlert(
        'Are you sure want to logout',
      );
      log('confirmation $confirmation');
      if (confirmation) {
        emit(state.copyWith(userLogout: StateResponse.loading()));

        final result = await userAuthenticationService.userLogout();
        if (result.status == StateStatus.success) {
          emit(state.copyWith(userLogout: StateResponse.success(null)));
        } else if (result.status == StateStatus.error) {
          emit(state.copyWith(
              userLogout: StateResponse.error(result.errorMessage)));
        }
      }
    });
    //to check the loged user
    on<_checkUserLoged>((event, emit) async {
      log('check user bloc');
      emit(state.copyWith(logedUser: StateResponse.loading()));
      final user = await userAuthenticationService.checkLogin();
      log('check user bloc called ${user.data}');
      if (user.status == StateStatus.success) {
        emit(state.copyWith(logedUser: StateResponse.success(user.data)));

        emit(state.copyWith(logedUser: StateResponse.intial()));
      } else if (user.status == StateStatus.error) {
        log('error state');
        emit(state.copyWith(logedUser: StateResponse.error(user.errorMessage)));

        emit(state.copyWith(logedUser: StateResponse.intial()));
      }
    });
    on<_pickImageFromGallery>((event, emit) async {
      final result = await uploadPostSeivice.pickImageFromGallery();
      if (result.status == StateStatus.success) {
        emit(state.copyWith(
            profileImageFile: StateResponse.success(result.data)));
      } else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            profileImageFile: StateResponse.error(result.errorMessage)));
      }
    });
    on<_fotgotPassword>((event, emit) async {
      if (event.email.isEmpty) {
        return alertdcontroller.warnigAlert('Fields Shouldbe complete');
      } else {
        emit(state.copyWith(forgotPassword: StateResponse.loading()));
        final result =
            await userAuthenticationService.forgotPassword(email: event.email);
        if (result.status == StateStatus.success) {
          emit(state.copyWith(forgotPassword: StateResponse.success(null)));
        } else {
          emit(state.copyWith(
              forgotPassword: StateResponse.error('Faled to reset password')));
        }
      }
    });
  }
}
