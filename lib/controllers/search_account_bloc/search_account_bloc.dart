import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weshare/core/helpers/api_response_handler.dart';
import 'package:weshare/core/helpers/enums.dart';
import 'package:weshare/data/repository/search_user_service.dart';
import 'package:weshare/models/user_profile_model.dart';

part 'search_account_event.dart';
part 'search_account_state.dart';
part 'search_account_bloc.freezed.dart';

class SearchAccountBloc extends Bloc<SearchAccountEvent, SearchAccountState> {
  final SearchAccountService searchAccountService;
  SearchAccountBloc(this.searchAccountService)
      : super(SearchAccountState.initial()) {
    on<SearchAccountEvent>((event, emit) async {
      emit(state.copyWith(searchResult: StateResponse.loading()));
      final result = await searchAccountService.searchAccount(
          value: event.value, userId: event.userId);
      if (result.status == StateStatus.success) {
        emit(state.copyWith(searchResult: StateResponse.success(result.data)));
      } else if (result.status == StateStatus.error) {
        emit(
            state.copyWith(searchResult: StateResponse.error('search failed')));
      }
    });
  }
}
