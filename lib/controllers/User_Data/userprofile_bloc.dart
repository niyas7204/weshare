import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/data/data_handler/compount_user_data.dart';
import 'package:weshare/data/repository/user_profileservice.dart';
import 'package:weshare/models/compound_user_data_model.dart';
import 'package:weshare/models/user_profile_model.dart';

part 'userprofile_event.dart';
part 'userprofile_state.dart';
part 'userprofile_bloc.freezed.dart';

class UserprofileBloc extends Bloc<UserprofileEvent, UserprofileState> {
  final FollowService followService;

  final UserDataImplimentation userDataImplimentation;

  UserprofileBloc(this.userDataImplimentation, this.followService)
      : super(UserprofileState.initial()) {
    //get user data
    on<getUserProfile>((event, emit) async {
      emit(state.copyWith(userProfile: StateResponse.loading()));

      final result = await userDataImplimentation.getuser(userid: event.userId);

      if (result.status == StateStatus.success) {
        emit(state.copyWith(
            followers: result.data!.followers,
            following: result.data!.following,
            userProfile: StateResponse.success(result.data!.userData),
            sharedPost: StateResponse.success(result.data!.friedsSharedPost),
            userPosts: StateResponse.success(result.data!.userPosts)));
      } else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            userPosts: StateResponse.error(result.errorMessage),
            sharedPost: StateResponse.error(result.errorMessage),
            userProfile: StateResponse.error(result.errorMessage)));
      }
    });
    on<followAnAccount>((event, emit) async {
      log(event.following.toString());
      log(event.acountId);
      if (event.following.contains(event.acountId)) {
        log('unfollowed');
        await followService.unfollowAccount(
            accoutId: event.acountId, userId: event.userId);
      } else {
        log('followed');
        // call to delete
        await followService.followAccount(
            accoutId: event.acountId, userId: event.userId);
      }
      log('call');

      //call to get all data

      final result = await userDataImplimentation.getuser(userid: event.userId);

      if (result.status == StateStatus.success) {
        log('followings ${result.data!.following}');
        log('success');
        emit(state.copyWith(
            followers: result.data!.followers,
            following: result.data!.following,
            userProfile: StateResponse.success(result.data!.userData),
            sharedPost: StateResponse.success(result.data!.friedsSharedPost),
            userPosts: StateResponse.success(result.data!.userPosts)));
      } else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            userPosts: StateResponse.error(result.errorMessage),
            sharedPost: StateResponse.error(result.errorMessage),
            userProfile: StateResponse.error(result.errorMessage)));
      }
    });
  }
}
