import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/data/repository/user_profileservice.dart';
import 'package:weshare/models/post_model.dart';
import 'package:weshare/models/user_profile_model.dart';

part 'userprofile_event.dart';
part 'userprofile_state.dart';
part 'userprofile_bloc.freezed.dart';

class UserprofileBloc extends Bloc<UserprofileEvent, UserprofileState> {
  final UserProfileService userProfileService;
  final SharedPostService sharedPostService;
  UserprofileBloc(this.userProfileService, this.sharedPostService)
      : super(UserprofileState.initial()) {
    on<getUserProfile>((event, emit) async {
      emit(state.copyWith(userProfile: StateResponse.loading()));
      final result = await userProfileService.getUserProfile(
        userid: event.userId,
      );
      if (result.status == StateStatus.success) {
        List<String> friends = [
          ...result.data!.followers != null ? result.data!.followers! : [],
          ...result.data!.following != null ? result.data!.following! : [],
        ];
        final posts = await sharedPostService.getsharedPosts(friends: friends);

        if (posts.status == StateStatus.success) {
          emit(state.copyWith(
              userProfile: StateResponse.success(
                result.data,
              ),
              sharedPost: posts));
        } else if (posts.status == StateStatus.error) {
          emit(state.copyWith(
              userProfile: StateResponse.error(posts.errorMessage),
              sharedPost: StateResponse.error(posts.errorMessage)));
        }
      } else if (result.status == StateStatus.error) {
        emit(state.copyWith(
            userProfile: StateResponse.error(result.errorMessage)));
      }
    });
  }
}
