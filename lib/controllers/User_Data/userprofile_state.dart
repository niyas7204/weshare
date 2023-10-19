part of 'userprofile_bloc.dart';

@freezed
class UserprofileState with _$UserprofileState {
  const factory UserprofileState(
          {required StateResponse<UserModel>? userProfile,
          required StateResponse<List<PostsBySenderid?>>? sharedPost,
          required StateResponse<List<PostsBySenderid?>>? userPosts}) =
      userprofileState;

  factory UserprofileState.initial() => userprofileState(
      userProfile: StateResponse.intial(),
      sharedPost: StateResponse.intial(),
      userPosts: StateResponse.intial());
}
