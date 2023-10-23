// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_account_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchAccountEvent {
  String get value => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String userId) searchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String userId)? searchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String userId)? searchAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(searchAccount value) searchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(searchAccount value)? searchAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(searchAccount value)? searchAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAccountEventCopyWith<SearchAccountEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAccountEventCopyWith<$Res> {
  factory $SearchAccountEventCopyWith(
          SearchAccountEvent value, $Res Function(SearchAccountEvent) then) =
      _$SearchAccountEventCopyWithImpl<$Res, SearchAccountEvent>;
  @useResult
  $Res call({String value, String userId});
}

/// @nodoc
class _$SearchAccountEventCopyWithImpl<$Res, $Val extends SearchAccountEvent>
    implements $SearchAccountEventCopyWith<$Res> {
  _$SearchAccountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$searchAccountImplCopyWith<$Res>
    implements $SearchAccountEventCopyWith<$Res> {
  factory _$$searchAccountImplCopyWith(
          _$searchAccountImpl value, $Res Function(_$searchAccountImpl) then) =
      __$$searchAccountImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String value, String userId});
}

/// @nodoc
class __$$searchAccountImplCopyWithImpl<$Res>
    extends _$SearchAccountEventCopyWithImpl<$Res, _$searchAccountImpl>
    implements _$$searchAccountImplCopyWith<$Res> {
  __$$searchAccountImplCopyWithImpl(
      _$searchAccountImpl _value, $Res Function(_$searchAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? userId = null,
  }) {
    return _then(_$searchAccountImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$searchAccountImpl implements searchAccount {
  const _$searchAccountImpl({required this.value, required this.userId});

  @override
  final String value;
  @override
  final String userId;

  @override
  String toString() {
    return 'SearchAccountEvent.searchAccount(value: $value, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchAccountImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$searchAccountImplCopyWith<_$searchAccountImpl> get copyWith =>
      __$$searchAccountImplCopyWithImpl<_$searchAccountImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value, String userId) searchAccount,
  }) {
    return searchAccount(value, userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String value, String userId)? searchAccount,
  }) {
    return searchAccount?.call(value, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value, String userId)? searchAccount,
    required TResult orElse(),
  }) {
    if (searchAccount != null) {
      return searchAccount(value, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(searchAccount value) searchAccount,
  }) {
    return searchAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(searchAccount value)? searchAccount,
  }) {
    return searchAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(searchAccount value)? searchAccount,
    required TResult orElse(),
  }) {
    if (searchAccount != null) {
      return searchAccount(this);
    }
    return orElse();
  }
}

abstract class searchAccount implements SearchAccountEvent {
  const factory searchAccount(
      {required final String value,
      required final String userId}) = _$searchAccountImpl;

  @override
  String get value;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$$searchAccountImplCopyWith<_$searchAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchAccountState {
  StateResponse<UserList> get searchResult =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchAccountStateCopyWith<SearchAccountState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchAccountStateCopyWith<$Res> {
  factory $SearchAccountStateCopyWith(
          SearchAccountState value, $Res Function(SearchAccountState) then) =
      _$SearchAccountStateCopyWithImpl<$Res, SearchAccountState>;
  @useResult
  $Res call({StateResponse<UserList> searchResult});
}

/// @nodoc
class _$SearchAccountStateCopyWithImpl<$Res, $Val extends SearchAccountState>
    implements $SearchAccountStateCopyWith<$Res> {
  _$SearchAccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
  }) {
    return _then(_value.copyWith(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as StateResponse<UserList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$searchAccountStateImplCopyWith<$Res>
    implements $SearchAccountStateCopyWith<$Res> {
  factory _$$searchAccountStateImplCopyWith(_$searchAccountStateImpl value,
          $Res Function(_$searchAccountStateImpl) then) =
      __$$searchAccountStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StateResponse<UserList> searchResult});
}

/// @nodoc
class __$$searchAccountStateImplCopyWithImpl<$Res>
    extends _$SearchAccountStateCopyWithImpl<$Res, _$searchAccountStateImpl>
    implements _$$searchAccountStateImplCopyWith<$Res> {
  __$$searchAccountStateImplCopyWithImpl(_$searchAccountStateImpl _value,
      $Res Function(_$searchAccountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResult = null,
  }) {
    return _then(_$searchAccountStateImpl(
      searchResult: null == searchResult
          ? _value.searchResult
          : searchResult // ignore: cast_nullable_to_non_nullable
              as StateResponse<UserList>,
    ));
  }
}

/// @nodoc

class _$searchAccountStateImpl implements searchAccountState {
  const _$searchAccountStateImpl({required this.searchResult});

  @override
  final StateResponse<UserList> searchResult;

  @override
  String toString() {
    return 'SearchAccountState(searchResult: $searchResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$searchAccountStateImpl &&
            (identical(other.searchResult, searchResult) ||
                other.searchResult == searchResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$searchAccountStateImplCopyWith<_$searchAccountStateImpl> get copyWith =>
      __$$searchAccountStateImplCopyWithImpl<_$searchAccountStateImpl>(
          this, _$identity);
}

abstract class searchAccountState implements SearchAccountState {
  const factory searchAccountState(
          {required final StateResponse<UserList> searchResult}) =
      _$searchAccountStateImpl;

  @override
  StateResponse<UserList> get searchResult;
  @override
  @JsonKey(ignore: true)
  _$$searchAccountStateImplCopyWith<_$searchAccountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
