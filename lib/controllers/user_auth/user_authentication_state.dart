part of 'user_authentication_bloc.dart';

@freezed
class UserAuthenticationState with _$UserAuthenticationState {
  const factory UserAuthenticationState({
    required StateResponse<String>? userSignUp,
    required StateResponse<String>? loginState,
  }) = userAuthenticationStatel;
  factory UserAuthenticationState.initial() => UserAuthenticationState(
      userSignUp: StateResponse.intial(), loginState: StateResponse.intial());
}
