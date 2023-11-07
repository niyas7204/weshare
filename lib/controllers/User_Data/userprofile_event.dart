part of 'userprofile_bloc.dart';

@freezed
class UserprofileEvent with _$UserprofileEvent {
  const factory UserprofileEvent.getuserprofile({
    required String userId,
  }) = getUserProfile;
  const factory UserprofileEvent.changePostSelection(
      {required PostSelection selection}) = _changePostSelection;

  const factory UserprofileEvent.followAnAccount(
      {required String acountId,
      required String userId,
      required List<String> following}) = followAnAccount;
}
