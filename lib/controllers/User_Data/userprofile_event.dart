part of 'userprofile_bloc.dart';

@freezed
class UserprofileEvent with _$UserprofileEvent {
  const factory UserprofileEvent.getuserprofile({
    required String userId,
  }) = getUserProfile;

  const factory UserprofileEvent.followAnAccount(
      {required String acountId, required String userId}) = followAnAccount;
  const factory UserprofileEvent.unfollowAnAccount(
      {required String acountId, required String userId}) = unfollowAnAccount;
}
