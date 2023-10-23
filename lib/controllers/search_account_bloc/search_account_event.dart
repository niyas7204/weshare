part of 'search_account_bloc.dart';

@freezed
class SearchAccountEvent with _$SearchAccountEvent {
  const factory SearchAccountEvent.searchAccount(
      {required String value, required String userId}) = searchAccount;
}
