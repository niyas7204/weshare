// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'userprofile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserprofileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getuserprofile,
    required TResult Function() getSharedposts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getuserprofile,
    TResult? Function()? getSharedposts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getuserprofile,
    TResult Function()? getSharedposts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserProfile value) getuserprofile,
    required TResult Function(getSharedPosts value) getSharedposts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserProfile value)? getuserprofile,
    TResult? Function(getSharedPosts value)? getSharedposts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserProfile value)? getuserprofile,
    TResult Function(getSharedPosts value)? getSharedposts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserprofileEventCopyWith<$Res> {
  factory $UserprofileEventCopyWith(
          UserprofileEvent value, $Res Function(UserprofileEvent) then) =
      _$UserprofileEventCopyWithImpl<$Res, UserprofileEvent>;
}

/// @nodoc
class _$UserprofileEventCopyWithImpl<$Res, $Val extends UserprofileEvent>
    implements $UserprofileEventCopyWith<$Res> {
  _$UserprofileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getUserProfileImplCopyWith<$Res> {
  factory _$$getUserProfileImplCopyWith(_$getUserProfileImpl value,
          $Res Function(_$getUserProfileImpl) then) =
      __$$getUserProfileImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$getUserProfileImplCopyWithImpl<$Res>
    extends _$UserprofileEventCopyWithImpl<$Res, _$getUserProfileImpl>
    implements _$$getUserProfileImplCopyWith<$Res> {
  __$$getUserProfileImplCopyWithImpl(
      _$getUserProfileImpl _value, $Res Function(_$getUserProfileImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$getUserProfileImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getUserProfileImpl implements getUserProfile {
  const _$getUserProfileImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'UserprofileEvent.getuserprofile(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getUserProfileImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getUserProfileImplCopyWith<_$getUserProfileImpl> get copyWith =>
      __$$getUserProfileImplCopyWithImpl<_$getUserProfileImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getuserprofile,
    required TResult Function() getSharedposts,
  }) {
    return getuserprofile(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getuserprofile,
    TResult? Function()? getSharedposts,
  }) {
    return getuserprofile?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getuserprofile,
    TResult Function()? getSharedposts,
    required TResult orElse(),
  }) {
    if (getuserprofile != null) {
      return getuserprofile(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserProfile value) getuserprofile,
    required TResult Function(getSharedPosts value) getSharedposts,
  }) {
    return getuserprofile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserProfile value)? getuserprofile,
    TResult? Function(getSharedPosts value)? getSharedposts,
  }) {
    return getuserprofile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserProfile value)? getuserprofile,
    TResult Function(getSharedPosts value)? getSharedposts,
    required TResult orElse(),
  }) {
    if (getuserprofile != null) {
      return getuserprofile(this);
    }
    return orElse();
  }
}

abstract class getUserProfile implements UserprofileEvent {
  const factory getUserProfile({required final String userId}) =
      _$getUserProfileImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$getUserProfileImplCopyWith<_$getUserProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getSharedPostsImplCopyWith<$Res> {
  factory _$$getSharedPostsImplCopyWith(_$getSharedPostsImpl value,
          $Res Function(_$getSharedPostsImpl) then) =
      __$$getSharedPostsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getSharedPostsImplCopyWithImpl<$Res>
    extends _$UserprofileEventCopyWithImpl<$Res, _$getSharedPostsImpl>
    implements _$$getSharedPostsImplCopyWith<$Res> {
  __$$getSharedPostsImplCopyWithImpl(
      _$getSharedPostsImpl _value, $Res Function(_$getSharedPostsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getSharedPostsImpl implements getSharedPosts {
  const _$getSharedPostsImpl();

  @override
  String toString() {
    return 'UserprofileEvent.getSharedposts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getSharedPostsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getuserprofile,
    required TResult Function() getSharedposts,
  }) {
    return getSharedposts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getuserprofile,
    TResult? Function()? getSharedposts,
  }) {
    return getSharedposts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getuserprofile,
    TResult Function()? getSharedposts,
    required TResult orElse(),
  }) {
    if (getSharedposts != null) {
      return getSharedposts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserProfile value) getuserprofile,
    required TResult Function(getSharedPosts value) getSharedposts,
  }) {
    return getSharedposts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserProfile value)? getuserprofile,
    TResult? Function(getSharedPosts value)? getSharedposts,
  }) {
    return getSharedposts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserProfile value)? getuserprofile,
    TResult Function(getSharedPosts value)? getSharedposts,
    required TResult orElse(),
  }) {
    if (getSharedposts != null) {
      return getSharedposts(this);
    }
    return orElse();
  }
}

abstract class getSharedPosts implements UserprofileEvent {
  const factory getSharedPosts() = _$getSharedPostsImpl;
}

/// @nodoc
mixin _$UserprofileState {
  StateResponse<UserModel>? get userProfile =>
      throw _privateConstructorUsedError;
  StateResponse<SharedPostModel>? get sharedPost =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserprofileStateCopyWith<UserprofileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserprofileStateCopyWith<$Res> {
  factory $UserprofileStateCopyWith(
          UserprofileState value, $Res Function(UserprofileState) then) =
      _$UserprofileStateCopyWithImpl<$Res, UserprofileState>;
  @useResult
  $Res call(
      {StateResponse<UserModel>? userProfile,
      StateResponse<SharedPostModel>? sharedPost});
}

/// @nodoc
class _$UserprofileStateCopyWithImpl<$Res, $Val extends UserprofileState>
    implements $UserprofileStateCopyWith<$Res> {
  _$UserprofileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? sharedPost = freezed,
  }) {
    return _then(_value.copyWith(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as StateResponse<UserModel>?,
      sharedPost: freezed == sharedPost
          ? _value.sharedPost
          : sharedPost // ignore: cast_nullable_to_non_nullable
              as StateResponse<SharedPostModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userprofileStateImplCopyWith<$Res>
    implements $UserprofileStateCopyWith<$Res> {
  factory _$$userprofileStateImplCopyWith(_$userprofileStateImpl value,
          $Res Function(_$userprofileStateImpl) then) =
      __$$userprofileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StateResponse<UserModel>? userProfile,
      StateResponse<SharedPostModel>? sharedPost});
}

/// @nodoc
class __$$userprofileStateImplCopyWithImpl<$Res>
    extends _$UserprofileStateCopyWithImpl<$Res, _$userprofileStateImpl>
    implements _$$userprofileStateImplCopyWith<$Res> {
  __$$userprofileStateImplCopyWithImpl(_$userprofileStateImpl _value,
      $Res Function(_$userprofileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfile = freezed,
    Object? sharedPost = freezed,
  }) {
    return _then(_$userprofileStateImpl(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as StateResponse<UserModel>?,
      sharedPost: freezed == sharedPost
          ? _value.sharedPost
          : sharedPost // ignore: cast_nullable_to_non_nullable
              as StateResponse<SharedPostModel>?,
    ));
  }
}

/// @nodoc

class _$userprofileStateImpl implements userprofileState {
  const _$userprofileStateImpl(
      {required this.userProfile, required this.sharedPost});

  @override
  final StateResponse<UserModel>? userProfile;
  @override
  final StateResponse<SharedPostModel>? sharedPost;

  @override
  String toString() {
    return 'UserprofileState(userProfile: $userProfile, sharedPost: $sharedPost)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userprofileStateImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.sharedPost, sharedPost) ||
                other.sharedPost == sharedPost));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userProfile, sharedPost);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userprofileStateImplCopyWith<_$userprofileStateImpl> get copyWith =>
      __$$userprofileStateImplCopyWithImpl<_$userprofileStateImpl>(
          this, _$identity);
}

abstract class userprofileState implements UserprofileState {
  const factory userprofileState(
          {required final StateResponse<UserModel>? userProfile,
          required final StateResponse<SharedPostModel>? sharedPost}) =
      _$userprofileStateImpl;

  @override
  StateResponse<UserModel>? get userProfile;
  @override
  StateResponse<SharedPostModel>? get sharedPost;
  @override
  @JsonKey(ignore: true)
  _$$userprofileStateImplCopyWith<_$userprofileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
