// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserAuthenticationEvent {
  List<TextEditingController> get controllers =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(List<TextEditingController> controllers)
        userSignUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers)? userSignUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers)? userSignUP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthenticationEventCopyWith<UserAuthenticationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationEventCopyWith<$Res> {
  factory $UserAuthenticationEventCopyWith(UserAuthenticationEvent value,
          $Res Function(UserAuthenticationEvent) then) =
      _$UserAuthenticationEventCopyWithImpl<$Res, UserAuthenticationEvent>;
  @useResult
  $Res call({List<TextEditingController> controllers});
}

/// @nodoc
class _$UserAuthenticationEventCopyWithImpl<$Res,
        $Val extends UserAuthenticationEvent>
    implements $UserAuthenticationEventCopyWith<$Res> {
  _$UserAuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
  }) {
    return _then(_value.copyWith(
      controllers: null == controllers
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userLoginImplCopyWith<$Res>
    implements $UserAuthenticationEventCopyWith<$Res> {
  factory _$$userLoginImplCopyWith(
          _$userLoginImpl value, $Res Function(_$userLoginImpl) then) =
      __$$userLoginImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TextEditingController> controllers});
}

/// @nodoc
class __$$userLoginImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$userLoginImpl>
    implements _$$userLoginImplCopyWith<$Res> {
  __$$userLoginImplCopyWithImpl(
      _$userLoginImpl _value, $Res Function(_$userLoginImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
  }) {
    return _then(_$userLoginImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
    ));
  }
}

/// @nodoc

class _$userLoginImpl implements _userLogin {
  const _$userLoginImpl(
      {required final List<TextEditingController> controllers})
      : _controllers = controllers;

  final List<TextEditingController> _controllers;
  @override
  List<TextEditingController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  String toString() {
    return 'UserAuthenticationEvent.userLogin(controllers: $controllers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userLoginImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_controllers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userLoginImplCopyWith<_$userLoginImpl> get copyWith =>
      __$$userLoginImplCopyWithImpl<_$userLoginImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(List<TextEditingController> controllers)
        userSignUP,
  }) {
    return userLogin(controllers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers)? userSignUP,
  }) {
    return userLogin?.call(controllers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers)? userSignUP,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(controllers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    required TResult orElse(),
  }) {
    if (userLogin != null) {
      return userLogin(this);
    }
    return orElse();
  }
}

abstract class _userLogin implements UserAuthenticationEvent {
  const factory _userLogin(
          {required final List<TextEditingController> controllers}) =
      _$userLoginImpl;

  @override
  List<TextEditingController> get controllers;
  @override
  @JsonKey(ignore: true)
  _$$userLoginImplCopyWith<_$userLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$userSignupImplCopyWith<$Res>
    implements $UserAuthenticationEventCopyWith<$Res> {
  factory _$$userSignupImplCopyWith(
          _$userSignupImpl value, $Res Function(_$userSignupImpl) then) =
      __$$userSignupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TextEditingController> controllers});
}

/// @nodoc
class __$$userSignupImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$userSignupImpl>
    implements _$$userSignupImplCopyWith<$Res> {
  __$$userSignupImplCopyWithImpl(
      _$userSignupImpl _value, $Res Function(_$userSignupImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controllers = null,
  }) {
    return _then(_$userSignupImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
    ));
  }
}

/// @nodoc

class _$userSignupImpl implements _userSignup {
  const _$userSignupImpl(
      {required final List<TextEditingController> controllers})
      : _controllers = controllers;

  final List<TextEditingController> _controllers;
  @override
  List<TextEditingController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  String toString() {
    return 'UserAuthenticationEvent.userSignUP(controllers: $controllers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userSignupImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_controllers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userSignupImplCopyWith<_$userSignupImpl> get copyWith =>
      __$$userSignupImplCopyWithImpl<_$userSignupImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(List<TextEditingController> controllers)
        userSignUP,
  }) {
    return userSignUP(controllers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers)? userSignUP,
  }) {
    return userSignUP?.call(controllers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers)? userSignUP,
    required TResult orElse(),
  }) {
    if (userSignUP != null) {
      return userSignUP(controllers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
  }) {
    return userSignUP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
  }) {
    return userSignUP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    required TResult orElse(),
  }) {
    if (userSignUP != null) {
      return userSignUP(this);
    }
    return orElse();
  }
}

abstract class _userSignup implements UserAuthenticationEvent {
  const factory _userSignup(
          {required final List<TextEditingController> controllers}) =
      _$userSignupImpl;

  @override
  List<TextEditingController> get controllers;
  @override
  @JsonKey(ignore: true)
  _$$userSignupImplCopyWith<_$userSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserAuthenticationState {
  StateResponse<String>? get userSignUp => throw _privateConstructorUsedError;
  StateResponse<String>? get loginState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserAuthenticationStateCopyWith<UserAuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationStateCopyWith<$Res> {
  factory $UserAuthenticationStateCopyWith(UserAuthenticationState value,
          $Res Function(UserAuthenticationState) then) =
      _$UserAuthenticationStateCopyWithImpl<$Res, UserAuthenticationState>;
  @useResult
  $Res call(
      {StateResponse<String>? userSignUp, StateResponse<String>? loginState});
}

/// @nodoc
class _$UserAuthenticationStateCopyWithImpl<$Res,
        $Val extends UserAuthenticationState>
    implements $UserAuthenticationStateCopyWith<$Res> {
  _$UserAuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userSignUp = freezed,
    Object? loginState = freezed,
  }) {
    return _then(_value.copyWith(
      userSignUp: freezed == userSignUp
          ? _value.userSignUp
          : userSignUp // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      loginState: freezed == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userAuthenticationStatelImplCopyWith<$Res>
    implements $UserAuthenticationStateCopyWith<$Res> {
  factory _$$userAuthenticationStatelImplCopyWith(
          _$userAuthenticationStatelImpl value,
          $Res Function(_$userAuthenticationStatelImpl) then) =
      __$$userAuthenticationStatelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateResponse<String>? userSignUp, StateResponse<String>? loginState});
}

/// @nodoc
class __$$userAuthenticationStatelImplCopyWithImpl<$Res>
    extends _$UserAuthenticationStateCopyWithImpl<$Res,
        _$userAuthenticationStatelImpl>
    implements _$$userAuthenticationStatelImplCopyWith<$Res> {
  __$$userAuthenticationStatelImplCopyWithImpl(
      _$userAuthenticationStatelImpl _value,
      $Res Function(_$userAuthenticationStatelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userSignUp = freezed,
    Object? loginState = freezed,
  }) {
    return _then(_$userAuthenticationStatelImpl(
      userSignUp: freezed == userSignUp
          ? _value.userSignUp
          : userSignUp // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
      loginState: freezed == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as StateResponse<String>?,
    ));
  }
}

/// @nodoc

class _$userAuthenticationStatelImpl implements userAuthenticationStatel {
  const _$userAuthenticationStatelImpl(
      {required this.userSignUp, required this.loginState});

  @override
  final StateResponse<String>? userSignUp;
  @override
  final StateResponse<String>? loginState;

  @override
  String toString() {
    return 'UserAuthenticationState(userSignUp: $userSignUp, loginState: $loginState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userAuthenticationStatelImpl &&
            (identical(other.userSignUp, userSignUp) ||
                other.userSignUp == userSignUp) &&
            (identical(other.loginState, loginState) ||
                other.loginState == loginState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userSignUp, loginState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userAuthenticationStatelImplCopyWith<_$userAuthenticationStatelImpl>
      get copyWith => __$$userAuthenticationStatelImplCopyWithImpl<
          _$userAuthenticationStatelImpl>(this, _$identity);
}

abstract class userAuthenticationStatel implements UserAuthenticationState {
  const factory userAuthenticationStatel(
          {required final StateResponse<String>? userSignUp,
          required final StateResponse<String>? loginState}) =
      _$userAuthenticationStatelImpl;

  @override
  StateResponse<String>? get userSignUp;
  @override
  StateResponse<String>? get loginState;
  @override
  @JsonKey(ignore: true)
  _$$userAuthenticationStatelImplCopyWith<_$userAuthenticationStatelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
