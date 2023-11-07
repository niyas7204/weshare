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
    required TResult Function(PostSelection selection) changePostSelection,
    required TResult Function(
            String acountId, String userId, List<String> following)
        followAnAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getuserprofile,
    TResult? Function(PostSelection selection)? changePostSelection,
    TResult? Function(String acountId, String userId, List<String> following)?
        followAnAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getuserprofile,
    TResult Function(PostSelection selection)? changePostSelection,
    TResult Function(String acountId, String userId, List<String> following)?
        followAnAccount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserProfile value) getuserprofile,
    required TResult Function(_changePostSelection value) changePostSelection,
    required TResult Function(followAnAccount value) followAnAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserProfile value)? getuserprofile,
    TResult? Function(_changePostSelection value)? changePostSelection,
    TResult? Function(followAnAccount value)? followAnAccount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserProfile value)? getuserprofile,
    TResult Function(_changePostSelection value)? changePostSelection,
    TResult Function(followAnAccount value)? followAnAccount,
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
    required TResult Function(PostSelection selection) changePostSelection,
    required TResult Function(
            String acountId, String userId, List<String> following)
        followAnAccount,
  }) {
    return getuserprofile(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getuserprofile,
    TResult? Function(PostSelection selection)? changePostSelection,
    TResult? Function(String acountId, String userId, List<String> following)?
        followAnAccount,
  }) {
    return getuserprofile?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getuserprofile,
    TResult Function(PostSelection selection)? changePostSelection,
    TResult Function(String acountId, String userId, List<String> following)?
        followAnAccount,
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
    required TResult Function(_changePostSelection value) changePostSelection,
    required TResult Function(followAnAccount value) followAnAccount,
  }) {
    return getuserprofile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserProfile value)? getuserprofile,
    TResult? Function(_changePostSelection value)? changePostSelection,
    TResult? Function(followAnAccount value)? followAnAccount,
  }) {
    return getuserprofile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserProfile value)? getuserprofile,
    TResult Function(_changePostSelection value)? changePostSelection,
    TResult Function(followAnAccount value)? followAnAccount,
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
abstract class _$$changePostSelectionImplCopyWith<$Res> {
  factory _$$changePostSelectionImplCopyWith(_$changePostSelectionImpl value,
          $Res Function(_$changePostSelectionImpl) then) =
      __$$changePostSelectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostSelection selection});
}

/// @nodoc
class __$$changePostSelectionImplCopyWithImpl<$Res>
    extends _$UserprofileEventCopyWithImpl<$Res, _$changePostSelectionImpl>
    implements _$$changePostSelectionImplCopyWith<$Res> {
  __$$changePostSelectionImplCopyWithImpl(_$changePostSelectionImpl _value,
      $Res Function(_$changePostSelectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_$changePostSelectionImpl(
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as PostSelection,
    ));
  }
}

/// @nodoc

class _$changePostSelectionImpl implements _changePostSelection {
  const _$changePostSelectionImpl({required this.selection});

  @override
  final PostSelection selection;

  @override
  String toString() {
    return 'UserprofileEvent.changePostSelection(selection: $selection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changePostSelectionImpl &&
            (identical(other.selection, selection) ||
                other.selection == selection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$changePostSelectionImplCopyWith<_$changePostSelectionImpl> get copyWith =>
      __$$changePostSelectionImplCopyWithImpl<_$changePostSelectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getuserprofile,
    required TResult Function(PostSelection selection) changePostSelection,
    required TResult Function(
            String acountId, String userId, List<String> following)
        followAnAccount,
  }) {
    return changePostSelection(selection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getuserprofile,
    TResult? Function(PostSelection selection)? changePostSelection,
    TResult? Function(String acountId, String userId, List<String> following)?
        followAnAccount,
  }) {
    return changePostSelection?.call(selection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getuserprofile,
    TResult Function(PostSelection selection)? changePostSelection,
    TResult Function(String acountId, String userId, List<String> following)?
        followAnAccount,
    required TResult orElse(),
  }) {
    if (changePostSelection != null) {
      return changePostSelection(selection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserProfile value) getuserprofile,
    required TResult Function(_changePostSelection value) changePostSelection,
    required TResult Function(followAnAccount value) followAnAccount,
  }) {
    return changePostSelection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserProfile value)? getuserprofile,
    TResult? Function(_changePostSelection value)? changePostSelection,
    TResult? Function(followAnAccount value)? followAnAccount,
  }) {
    return changePostSelection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserProfile value)? getuserprofile,
    TResult Function(_changePostSelection value)? changePostSelection,
    TResult Function(followAnAccount value)? followAnAccount,
    required TResult orElse(),
  }) {
    if (changePostSelection != null) {
      return changePostSelection(this);
    }
    return orElse();
  }
}

abstract class _changePostSelection implements UserprofileEvent {
  const factory _changePostSelection({required final PostSelection selection}) =
      _$changePostSelectionImpl;

  PostSelection get selection;
  @JsonKey(ignore: true)
  _$$changePostSelectionImplCopyWith<_$changePostSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$followAnAccountImplCopyWith<$Res> {
  factory _$$followAnAccountImplCopyWith(_$followAnAccountImpl value,
          $Res Function(_$followAnAccountImpl) then) =
      __$$followAnAccountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String acountId, String userId, List<String> following});
}

/// @nodoc
class __$$followAnAccountImplCopyWithImpl<$Res>
    extends _$UserprofileEventCopyWithImpl<$Res, _$followAnAccountImpl>
    implements _$$followAnAccountImplCopyWith<$Res> {
  __$$followAnAccountImplCopyWithImpl(
      _$followAnAccountImpl _value, $Res Function(_$followAnAccountImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? acountId = null,
    Object? userId = null,
    Object? following = null,
  }) {
    return _then(_$followAnAccountImpl(
      acountId: null == acountId
          ? _value.acountId
          : acountId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$followAnAccountImpl implements followAnAccount {
  const _$followAnAccountImpl(
      {required this.acountId,
      required this.userId,
      required final List<String> following})
      : _following = following;

  @override
  final String acountId;
  @override
  final String userId;
  final List<String> _following;
  @override
  List<String> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  @override
  String toString() {
    return 'UserprofileEvent.followAnAccount(acountId: $acountId, userId: $userId, following: $following)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$followAnAccountImpl &&
            (identical(other.acountId, acountId) ||
                other.acountId == acountId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality()
                .equals(other._following, _following));
  }

  @override
  int get hashCode => Object.hash(runtimeType, acountId, userId,
      const DeepCollectionEquality().hash(_following));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$followAnAccountImplCopyWith<_$followAnAccountImpl> get copyWith =>
      __$$followAnAccountImplCopyWithImpl<_$followAnAccountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getuserprofile,
    required TResult Function(PostSelection selection) changePostSelection,
    required TResult Function(
            String acountId, String userId, List<String> following)
        followAnAccount,
  }) {
    return followAnAccount(acountId, userId, following);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getuserprofile,
    TResult? Function(PostSelection selection)? changePostSelection,
    TResult? Function(String acountId, String userId, List<String> following)?
        followAnAccount,
  }) {
    return followAnAccount?.call(acountId, userId, following);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getuserprofile,
    TResult Function(PostSelection selection)? changePostSelection,
    TResult Function(String acountId, String userId, List<String> following)?
        followAnAccount,
    required TResult orElse(),
  }) {
    if (followAnAccount != null) {
      return followAnAccount(acountId, userId, following);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getUserProfile value) getuserprofile,
    required TResult Function(_changePostSelection value) changePostSelection,
    required TResult Function(followAnAccount value) followAnAccount,
  }) {
    return followAnAccount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getUserProfile value)? getuserprofile,
    TResult? Function(_changePostSelection value)? changePostSelection,
    TResult? Function(followAnAccount value)? followAnAccount,
  }) {
    return followAnAccount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getUserProfile value)? getuserprofile,
    TResult Function(_changePostSelection value)? changePostSelection,
    TResult Function(followAnAccount value)? followAnAccount,
    required TResult orElse(),
  }) {
    if (followAnAccount != null) {
      return followAnAccount(this);
    }
    return orElse();
  }
}

abstract class followAnAccount implements UserprofileEvent {
  const factory followAnAccount(
      {required final String acountId,
      required final String userId,
      required final List<String> following}) = _$followAnAccountImpl;

  String get acountId;
  String get userId;
  List<String> get following;
  @JsonKey(ignore: true)
  _$$followAnAccountImplCopyWith<_$followAnAccountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserprofileState {
  StateResponse<UserModel>? get userProfile =>
      throw _privateConstructorUsedError;
  StateResponse<List<PostsBySenderid?>>? get sharedPost =>
      throw _privateConstructorUsedError;
  StateResponse<List<PostsBySenderid?>>? get userPosts =>
      throw _privateConstructorUsedError;
  List<String> get followers => throw _privateConstructorUsedError;
  List<String> get following => throw _privateConstructorUsedError;
  PostSelection get postSelection => throw _privateConstructorUsedError;

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
      StateResponse<List<PostsBySenderid?>>? sharedPost,
      StateResponse<List<PostsBySenderid?>>? userPosts,
      List<String> followers,
      List<String> following,
      PostSelection postSelection});
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
    Object? userPosts = freezed,
    Object? followers = null,
    Object? following = null,
    Object? postSelection = null,
  }) {
    return _then(_value.copyWith(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as StateResponse<UserModel>?,
      sharedPost: freezed == sharedPost
          ? _value.sharedPost
          : sharedPost // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<PostsBySenderid?>>?,
      userPosts: freezed == userPosts
          ? _value.userPosts
          : userPosts // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<PostsBySenderid?>>?,
      followers: null == followers
          ? _value.followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value.following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postSelection: null == postSelection
          ? _value.postSelection
          : postSelection // ignore: cast_nullable_to_non_nullable
              as PostSelection,
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
      StateResponse<List<PostsBySenderid?>>? sharedPost,
      StateResponse<List<PostsBySenderid?>>? userPosts,
      List<String> followers,
      List<String> following,
      PostSelection postSelection});
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
    Object? userPosts = freezed,
    Object? followers = null,
    Object? following = null,
    Object? postSelection = null,
  }) {
    return _then(_$userprofileStateImpl(
      userProfile: freezed == userProfile
          ? _value.userProfile
          : userProfile // ignore: cast_nullable_to_non_nullable
              as StateResponse<UserModel>?,
      sharedPost: freezed == sharedPost
          ? _value.sharedPost
          : sharedPost // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<PostsBySenderid?>>?,
      userPosts: freezed == userPosts
          ? _value.userPosts
          : userPosts // ignore: cast_nullable_to_non_nullable
              as StateResponse<List<PostsBySenderid?>>?,
      followers: null == followers
          ? _value._followers
          : followers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      following: null == following
          ? _value._following
          : following // ignore: cast_nullable_to_non_nullable
              as List<String>,
      postSelection: null == postSelection
          ? _value.postSelection
          : postSelection // ignore: cast_nullable_to_non_nullable
              as PostSelection,
    ));
  }
}

/// @nodoc

class _$userprofileStateImpl implements userprofileState {
  const _$userprofileStateImpl(
      {required this.userProfile,
      required this.sharedPost,
      required this.userPosts,
      required final List<String> followers,
      required final List<String> following,
      required this.postSelection})
      : _followers = followers,
        _following = following;

  @override
  final StateResponse<UserModel>? userProfile;
  @override
  final StateResponse<List<PostsBySenderid?>>? sharedPost;
  @override
  final StateResponse<List<PostsBySenderid?>>? userPosts;
  final List<String> _followers;
  @override
  List<String> get followers {
    if (_followers is EqualUnmodifiableListView) return _followers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_followers);
  }

  final List<String> _following;
  @override
  List<String> get following {
    if (_following is EqualUnmodifiableListView) return _following;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_following);
  }

  @override
  final PostSelection postSelection;

  @override
  String toString() {
    return 'UserprofileState(userProfile: $userProfile, sharedPost: $sharedPost, userPosts: $userPosts, followers: $followers, following: $following, postSelection: $postSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userprofileStateImpl &&
            (identical(other.userProfile, userProfile) ||
                other.userProfile == userProfile) &&
            (identical(other.sharedPost, sharedPost) ||
                other.sharedPost == sharedPost) &&
            (identical(other.userPosts, userPosts) ||
                other.userPosts == userPosts) &&
            const DeepCollectionEquality()
                .equals(other._followers, _followers) &&
            const DeepCollectionEquality()
                .equals(other._following, _following) &&
            (identical(other.postSelection, postSelection) ||
                other.postSelection == postSelection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userProfile,
      sharedPost,
      userPosts,
      const DeepCollectionEquality().hash(_followers),
      const DeepCollectionEquality().hash(_following),
      postSelection);

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
      required final StateResponse<List<PostsBySenderid?>>? sharedPost,
      required final StateResponse<List<PostsBySenderid?>>? userPosts,
      required final List<String> followers,
      required final List<String> following,
      required final PostSelection postSelection}) = _$userprofileStateImpl;

  @override
  StateResponse<UserModel>? get userProfile;
  @override
  StateResponse<List<PostsBySenderid?>>? get sharedPost;
  @override
  StateResponse<List<PostsBySenderid?>>? get userPosts;
  @override
  List<String> get followers;
  @override
  List<String> get following;
  @override
  PostSelection get postSelection;
  @override
  @JsonKey(ignore: true)
  _$$userprofileStateImplCopyWith<_$userprofileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
