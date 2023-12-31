part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState({
    required StateResponse<String>? userSignUp,
    required StateResponse<String>? loginState,
    required StateResponse<String?>? logedUser,
    required StateResponse userLogout,
    required StateResponse<XFile?> profileImageFile,
    required StateResponse forgotPassword,
    required AuthSelection authSelection,
  }) = userAuthenticationStatel;
  factory UserAuthenticationState.initial() => UserAuthenticationState(
      userSignUp: StateResponse.intial(),
      loginState: StateResponse.intial(),
      logedUser: StateResponse.intial(),
      userLogout: StateResponse.intial(),
      authSelection: AuthSelection.login,
      profileImageFile: StateResponse.intial(),
      forgotPassword: StateResponse.intial());
}
