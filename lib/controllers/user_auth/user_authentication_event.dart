part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationEvent with _$UserAuthenticationEvent {
  const factory UserAuthenticationEvent.userLogin(
      {required List<TextEditingController> controllers}) = _userLogin;
  const factory UserAuthenticationEvent.userSignUP(
      {required List<TextEditingController> controllers}) = _userSignup;
  const factory UserAuthenticationEvent.checkUserLoged() = _checkUserLoged;
  const factory UserAuthenticationEvent.userLogout() = _userLogout;
}
