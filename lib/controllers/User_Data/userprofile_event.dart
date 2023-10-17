part of 'userprofile_bloc.dart';

@freezed
class UserprofileEvent with _$UserprofileEvent {
  const factory UserprofileEvent.getuserprofile({
    required String userId,
  }) = getUserProfile;
  const factory UserprofileEvent.getSharedposts() = getSharedPosts;
}
