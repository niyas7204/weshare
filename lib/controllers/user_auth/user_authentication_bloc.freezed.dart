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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(
            List<TextEditingController> controllers, XFile? profile)
        userSignUP,
    required TResult Function(String email) forgotPassword,
    required TResult Function() pickImageFromGallery,
    required TResult Function() checkUserLoged,
    required TResult Function() userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? checkUserLoged,
    TResult? Function()? userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult Function(String email)? forgotPassword,
    TResult Function()? pickImageFromGallery,
    TResult Function()? checkUserLoged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
    required TResult Function(_fotgotPassword value) forgotPassword,
    required TResult Function(_pickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_userLogout value) userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
    TResult? Function(_fotgotPassword value)? forgotPassword,
    TResult? Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_userLogout value)? userLogout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    TResult Function(_fotgotPassword value)? forgotPassword,
    TResult Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_userLogout value)? userLogout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAuthenticationEventCopyWith<$Res> {
  factory $UserAuthenticationEventCopyWith(UserAuthenticationEvent value,
          $Res Function(UserAuthenticationEvent) then) =
      _$UserAuthenticationEventCopyWithImpl<$Res, UserAuthenticationEvent>;
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
}

/// @nodoc
abstract class _$$userLoginImplCopyWith<$Res> {
  factory _$$userLoginImplCopyWith(
          _$userLoginImpl value, $Res Function(_$userLoginImpl) then) =
      __$$userLoginImplCopyWithImpl<$Res>;
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
    required TResult Function(
            List<TextEditingController> controllers, XFile? profile)
        userSignUP,
    required TResult Function(String email) forgotPassword,
    required TResult Function() pickImageFromGallery,
    required TResult Function() checkUserLoged,
    required TResult Function() userLogout,
  }) {
    return userLogin(controllers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? checkUserLoged,
    TResult? Function()? userLogout,
  }) {
    return userLogin?.call(controllers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult Function(String email)? forgotPassword,
    TResult Function()? pickImageFromGallery,
    TResult Function()? checkUserLoged,
    TResult Function()? userLogout,
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
    required TResult Function(_fotgotPassword value) forgotPassword,
    required TResult Function(_pickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_userLogout value) userLogout,
  }) {
    return userLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
    TResult? Function(_fotgotPassword value)? forgotPassword,
    TResult? Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_userLogout value)? userLogout,
  }) {
    return userLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    TResult Function(_fotgotPassword value)? forgotPassword,
    TResult Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_userLogout value)? userLogout,
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

  List<TextEditingController> get controllers;
  @JsonKey(ignore: true)
  _$$userLoginImplCopyWith<_$userLoginImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$userSignupImplCopyWith<$Res> {
  factory _$$userSignupImplCopyWith(
          _$userSignupImpl value, $Res Function(_$userSignupImpl) then) =
      __$$userSignupImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TextEditingController> controllers, XFile? profile});
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
    Object? profile = freezed,
  }) {
    return _then(_$userSignupImpl(
      controllers: null == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$userSignupImpl implements _userSignup {
  const _$userSignupImpl(
      {required final List<TextEditingController> controllers,
      required this.profile})
      : _controllers = controllers;

  final List<TextEditingController> _controllers;
  @override
  List<TextEditingController> get controllers {
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllers);
  }

  @override
  final XFile? profile;

  @override
  String toString() {
    return 'UserAuthenticationEvent.userSignUP(controllers: $controllers, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userSignupImpl &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_controllers), profile);

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
    required TResult Function(
            List<TextEditingController> controllers, XFile? profile)
        userSignUP,
    required TResult Function(String email) forgotPassword,
    required TResult Function() pickImageFromGallery,
    required TResult Function() checkUserLoged,
    required TResult Function() userLogout,
  }) {
    return userSignUP(controllers, profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? checkUserLoged,
    TResult? Function()? userLogout,
  }) {
    return userSignUP?.call(controllers, profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult Function(String email)? forgotPassword,
    TResult Function()? pickImageFromGallery,
    TResult Function()? checkUserLoged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (userSignUP != null) {
      return userSignUP(controllers, profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
    required TResult Function(_fotgotPassword value) forgotPassword,
    required TResult Function(_pickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_userLogout value) userLogout,
  }) {
    return userSignUP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
    TResult? Function(_fotgotPassword value)? forgotPassword,
    TResult? Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_userLogout value)? userLogout,
  }) {
    return userSignUP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    TResult Function(_fotgotPassword value)? forgotPassword,
    TResult Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_userLogout value)? userLogout,
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
      {required final List<TextEditingController> controllers,
      required final XFile? profile}) = _$userSignupImpl;

  List<TextEditingController> get controllers;
  XFile? get profile;
  @JsonKey(ignore: true)
  _$$userSignupImplCopyWith<_$userSignupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$fotgotPasswordImplCopyWith<$Res> {
  factory _$$fotgotPasswordImplCopyWith(_$fotgotPasswordImpl value,
          $Res Function(_$fotgotPasswordImpl) then) =
      __$$fotgotPasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$fotgotPasswordImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$fotgotPasswordImpl>
    implements _$$fotgotPasswordImplCopyWith<$Res> {
  __$$fotgotPasswordImplCopyWithImpl(
      _$fotgotPasswordImpl _value, $Res Function(_$fotgotPasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$fotgotPasswordImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$fotgotPasswordImpl implements _fotgotPassword {
  const _$fotgotPasswordImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'UserAuthenticationEvent.forgotPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$fotgotPasswordImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$fotgotPasswordImplCopyWith<_$fotgotPasswordImpl> get copyWith =>
      __$$fotgotPasswordImplCopyWithImpl<_$fotgotPasswordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(
            List<TextEditingController> controllers, XFile? profile)
        userSignUP,
    required TResult Function(String email) forgotPassword,
    required TResult Function() pickImageFromGallery,
    required TResult Function() checkUserLoged,
    required TResult Function() userLogout,
  }) {
    return forgotPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? checkUserLoged,
    TResult? Function()? userLogout,
  }) {
    return forgotPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult Function(String email)? forgotPassword,
    TResult Function()? pickImageFromGallery,
    TResult Function()? checkUserLoged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
    required TResult Function(_fotgotPassword value) forgotPassword,
    required TResult Function(_pickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_userLogout value) userLogout,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
    TResult? Function(_fotgotPassword value)? forgotPassword,
    TResult? Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_userLogout value)? userLogout,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    TResult Function(_fotgotPassword value)? forgotPassword,
    TResult Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_userLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _fotgotPassword implements UserAuthenticationEvent {
  const factory _fotgotPassword({required final String email}) =
      _$fotgotPasswordImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$fotgotPasswordImplCopyWith<_$fotgotPasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$pickImageFromGalleryImplCopyWith<$Res> {
  factory _$$pickImageFromGalleryImplCopyWith(_$pickImageFromGalleryImpl value,
          $Res Function(_$pickImageFromGalleryImpl) then) =
      __$$pickImageFromGalleryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$pickImageFromGalleryImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res,
        _$pickImageFromGalleryImpl>
    implements _$$pickImageFromGalleryImplCopyWith<$Res> {
  __$$pickImageFromGalleryImplCopyWithImpl(_$pickImageFromGalleryImpl _value,
      $Res Function(_$pickImageFromGalleryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$pickImageFromGalleryImpl implements _pickImageFromGallery {
  const _$pickImageFromGalleryImpl();

  @override
  String toString() {
    return 'UserAuthenticationEvent.pickImageFromGallery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$pickImageFromGalleryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(
            List<TextEditingController> controllers, XFile? profile)
        userSignUP,
    required TResult Function(String email) forgotPassword,
    required TResult Function() pickImageFromGallery,
    required TResult Function() checkUserLoged,
    required TResult Function() userLogout,
  }) {
    return pickImageFromGallery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? checkUserLoged,
    TResult? Function()? userLogout,
  }) {
    return pickImageFromGallery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult Function(String email)? forgotPassword,
    TResult Function()? pickImageFromGallery,
    TResult Function()? checkUserLoged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
    required TResult Function(_fotgotPassword value) forgotPassword,
    required TResult Function(_pickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_userLogout value) userLogout,
  }) {
    return pickImageFromGallery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
    TResult? Function(_fotgotPassword value)? forgotPassword,
    TResult? Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_userLogout value)? userLogout,
  }) {
    return pickImageFromGallery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    TResult Function(_fotgotPassword value)? forgotPassword,
    TResult Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_userLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (pickImageFromGallery != null) {
      return pickImageFromGallery(this);
    }
    return orElse();
  }
}

abstract class _pickImageFromGallery implements UserAuthenticationEvent {
  const factory _pickImageFromGallery() = _$pickImageFromGalleryImpl;
}

/// @nodoc
abstract class _$$checkUserLogedImplCopyWith<$Res> {
  factory _$$checkUserLogedImplCopyWith(_$checkUserLogedImpl value,
          $Res Function(_$checkUserLogedImpl) then) =
      __$$checkUserLogedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$checkUserLogedImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$checkUserLogedImpl>
    implements _$$checkUserLogedImplCopyWith<$Res> {
  __$$checkUserLogedImplCopyWithImpl(
      _$checkUserLogedImpl _value, $Res Function(_$checkUserLogedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$checkUserLogedImpl implements _checkUserLoged {
  const _$checkUserLogedImpl();

  @override
  String toString() {
    return 'UserAuthenticationEvent.checkUserLoged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$checkUserLogedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(
            List<TextEditingController> controllers, XFile? profile)
        userSignUP,
    required TResult Function(String email) forgotPassword,
    required TResult Function() pickImageFromGallery,
    required TResult Function() checkUserLoged,
    required TResult Function() userLogout,
  }) {
    return checkUserLoged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? checkUserLoged,
    TResult? Function()? userLogout,
  }) {
    return checkUserLoged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult Function(String email)? forgotPassword,
    TResult Function()? pickImageFromGallery,
    TResult Function()? checkUserLoged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (checkUserLoged != null) {
      return checkUserLoged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
    required TResult Function(_fotgotPassword value) forgotPassword,
    required TResult Function(_pickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_userLogout value) userLogout,
  }) {
    return checkUserLoged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
    TResult? Function(_fotgotPassword value)? forgotPassword,
    TResult? Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_userLogout value)? userLogout,
  }) {
    return checkUserLoged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    TResult Function(_fotgotPassword value)? forgotPassword,
    TResult Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_userLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (checkUserLoged != null) {
      return checkUserLoged(this);
    }
    return orElse();
  }
}

abstract class _checkUserLoged implements UserAuthenticationEvent {
  const factory _checkUserLoged() = _$checkUserLogedImpl;
}

/// @nodoc
abstract class _$$userLogoutImplCopyWith<$Res> {
  factory _$$userLogoutImplCopyWith(
          _$userLogoutImpl value, $Res Function(_$userLogoutImpl) then) =
      __$$userLogoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$userLogoutImplCopyWithImpl<$Res>
    extends _$UserAuthenticationEventCopyWithImpl<$Res, _$userLogoutImpl>
    implements _$$userLogoutImplCopyWith<$Res> {
  __$$userLogoutImplCopyWithImpl(
      _$userLogoutImpl _value, $Res Function(_$userLogoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$userLogoutImpl implements _userLogout {
  const _$userLogoutImpl();

  @override
  String toString() {
    return 'UserAuthenticationEvent.userLogout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$userLogoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextEditingController> controllers)
        userLogin,
    required TResult Function(
            List<TextEditingController> controllers, XFile? profile)
        userSignUP,
    required TResult Function(String email) forgotPassword,
    required TResult Function() pickImageFromGallery,
    required TResult Function() checkUserLoged,
    required TResult Function() userLogout,
  }) {
    return userLogout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextEditingController> controllers)? userLogin,
    TResult? Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult? Function(String email)? forgotPassword,
    TResult? Function()? pickImageFromGallery,
    TResult? Function()? checkUserLoged,
    TResult? Function()? userLogout,
  }) {
    return userLogout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextEditingController> controllers)? userLogin,
    TResult Function(List<TextEditingController> controllers, XFile? profile)?
        userSignUP,
    TResult Function(String email)? forgotPassword,
    TResult Function()? pickImageFromGallery,
    TResult Function()? checkUserLoged,
    TResult Function()? userLogout,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_userLogin value) userLogin,
    required TResult Function(_userSignup value) userSignUP,
    required TResult Function(_fotgotPassword value) forgotPassword,
    required TResult Function(_pickImageFromGallery value) pickImageFromGallery,
    required TResult Function(_checkUserLoged value) checkUserLoged,
    required TResult Function(_userLogout value) userLogout,
  }) {
    return userLogout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_userLogin value)? userLogin,
    TResult? Function(_userSignup value)? userSignUP,
    TResult? Function(_fotgotPassword value)? forgotPassword,
    TResult? Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult? Function(_checkUserLoged value)? checkUserLoged,
    TResult? Function(_userLogout value)? userLogout,
  }) {
    return userLogout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_userLogin value)? userLogin,
    TResult Function(_userSignup value)? userSignUP,
    TResult Function(_fotgotPassword value)? forgotPassword,
    TResult Function(_pickImageFromGallery value)? pickImageFromGallery,
    TResult Function(_checkUserLoged value)? checkUserLoged,
    TResult Function(_userLogout value)? userLogout,
    required TResult orElse(),
  }) {
    if (userLogout != null) {
      return userLogout(this);
    }
    return orElse();
  }
}

abstract class _userLogout implements UserAuthenticationEvent {
  const factory _userLogout() = _$userLogoutImpl;
}

/// @nodoc
mixin _$UserAuthenticationState {
  StateResponse<String>? get userSignUp => throw _privateConstructorUsedError;
  StateResponse<String>? get loginState => throw _privateConstructorUsedError;
  StateResponse<String?>? get logedUser => throw _privateConstructorUsedError;
  StateResponse<dynamic> get userLogout => throw _privateConstructorUsedError;
  StateResponse<XFile?> get profileImageFile =>
      throw _privateConstructorUsedError;
  StateResponse<dynamic> get forgotPassword =>
      throw _privateConstructorUsedError;

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
      {StateResponse<String>? userSignUp,
      StateResponse<String>? loginState,
      StateResponse<String?>? logedUser,
      StateResponse<dynamic> userLogout,
      StateResponse<XFile?> profileImageFile,
      StateResponse<dynamic> forgotPassword});
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
    Object? logedUser = freezed,
    Object? userLogout = null,
    Object? profileImageFile = null,
    Object? forgotPassword = null,
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
      logedUser: freezed == logedUser
          ? _value.logedUser
          : logedUser // ignore: cast_nullable_to_non_nullable
              as StateResponse<String?>?,
      userLogout: null == userLogout
          ? _value.userLogout
          : userLogout // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      profileImageFile: null == profileImageFile
          ? _value.profileImageFile
          : profileImageFile // ignore: cast_nullable_to_non_nullable
              as StateResponse<XFile?>,
      forgotPassword: null == forgotPassword
          ? _value.forgotPassword
          : forgotPassword // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
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
      {StateResponse<String>? userSignUp,
      StateResponse<String>? loginState,
      StateResponse<String?>? logedUser,
      StateResponse<dynamic> userLogout,
      StateResponse<XFile?> profileImageFile,
      StateResponse<dynamic> forgotPassword});
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
    Object? logedUser = freezed,
    Object? userLogout = null,
    Object? profileImageFile = null,
    Object? forgotPassword = null,
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
      logedUser: freezed == logedUser
          ? _value.logedUser
          : logedUser // ignore: cast_nullable_to_non_nullable
              as StateResponse<String?>?,
      userLogout: null == userLogout
          ? _value.userLogout
          : userLogout // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
      profileImageFile: null == profileImageFile
          ? _value.profileImageFile
          : profileImageFile // ignore: cast_nullable_to_non_nullable
              as StateResponse<XFile?>,
      forgotPassword: null == forgotPassword
          ? _value.forgotPassword
          : forgotPassword // ignore: cast_nullable_to_non_nullable
              as StateResponse<dynamic>,
    ));
  }
}

/// @nodoc

class _$userAuthenticationStatelImpl implements userAuthenticationStatel {
  const _$userAuthenticationStatelImpl(
      {required this.userSignUp,
      required this.loginState,
      required this.logedUser,
      required this.userLogout,
      required this.profileImageFile,
      required this.forgotPassword});

  @override
  final StateResponse<String>? userSignUp;
  @override
  final StateResponse<String>? loginState;
  @override
  final StateResponse<String?>? logedUser;
  @override
  final StateResponse<dynamic> userLogout;
  @override
  final StateResponse<XFile?> profileImageFile;
  @override
  final StateResponse<dynamic> forgotPassword;

  @override
  String toString() {
    return 'UserAuthenticationState(userSignUp: $userSignUp, loginState: $loginState, logedUser: $logedUser, userLogout: $userLogout, profileImageFile: $profileImageFile, forgotPassword: $forgotPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userAuthenticationStatelImpl &&
            (identical(other.userSignUp, userSignUp) ||
                other.userSignUp == userSignUp) &&
            (identical(other.loginState, loginState) ||
                other.loginState == loginState) &&
            (identical(other.logedUser, logedUser) ||
                other.logedUser == logedUser) &&
            (identical(other.userLogout, userLogout) ||
                other.userLogout == userLogout) &&
            (identical(other.profileImageFile, profileImageFile) ||
                other.profileImageFile == profileImageFile) &&
            (identical(other.forgotPassword, forgotPassword) ||
                other.forgotPassword == forgotPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userSignUp, loginState,
      logedUser, userLogout, profileImageFile, forgotPassword);

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
          required final StateResponse<String>? loginState,
          required final StateResponse<String?>? logedUser,
          required final StateResponse<dynamic> userLogout,
          required final StateResponse<XFile?> profileImageFile,
          required final StateResponse<dynamic> forgotPassword}) =
      _$userAuthenticationStatelImpl;

  @override
  StateResponse<String>? get userSignUp;
  @override
  StateResponse<String>? get loginState;
  @override
  StateResponse<String?>? get logedUser;
  @override
  StateResponse<dynamic> get userLogout;
  @override
  StateResponse<XFile?> get profileImageFile;
  @override
  StateResponse<dynamic> get forgotPassword;
  @override
  @JsonKey(ignore: true)
  _$$userAuthenticationStatelImplCopyWith<_$userAuthenticationStatelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
