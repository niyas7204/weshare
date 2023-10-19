part of 'search_account_bloc.dart';

@freezed
class SearchAccountState with _$SearchAccountState {
  const factory SearchAccountState(
      {required StateResponse<UserList> searchResult}) = searchAccountState;
  factory SearchAccountState.initial() =>
      searchAccountState(searchResult: StateResponse.intial());
}
