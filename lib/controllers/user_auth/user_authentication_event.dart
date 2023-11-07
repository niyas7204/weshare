part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationEvent with _$UserAuthenticationEvent {
  const factory UserAuthenticationEvent.userLogin(
      {required List<TextEditingController> controllers}) = _userLogin;
  const factory UserAuthenticationEvent.userSignUP(
      {required List<TextEditingController> controllers,
      required XFile? profile}) = _userSignup;
  const factory UserAuthenticationEvent.forgotPassword(
      {required String email}) = _fotgotPassword;
  const factory UserAuthenticationEvent.pickImageFromGallery() =
      _pickImageFromGallery;
  const factory UserAuthenticationEvent.checkUserLoged() = _checkUserLoged;
  const factory UserAuthenticationEvent.userLogout() = _userLogout;
}
