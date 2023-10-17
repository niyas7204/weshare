part of 'userprofile_bloc.dart';

@freezed
class UserprofileState with _$UserprofileState {
  const factory UserprofileState(
      {required StateResponse<UserModel>? userProfile,
      required StateResponse<SharedPostModel>? sharedPost}) = userprofileState;

  factory UserprofileState.initial() => userprofileState(
      userProfile: StateResponse.intial(), sharedPost: StateResponse.intial());
}
