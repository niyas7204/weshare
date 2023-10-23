part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState({
    required StateResponse<String>? userSignUp,
    required StateResponse<String>? loginState,
    required StateResponse<String?>? logedUser,
  }) = userAuthenticationStatel;
  factory UserAuthenticationState.initial() => UserAuthenticationState(
      userSignUp: StateResponse.intial(),
      loginState: StateResponse.intial(),
      logedUser: StateResponse.intial());
}
