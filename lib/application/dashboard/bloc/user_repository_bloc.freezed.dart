// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_repository_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserRepositoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(UserClass user) setUserData,
    required TResult Function(Option<FirestoreFailure> failure) checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
    TResult? Function(UserClass user)? setUserData,
    TResult? Function(Option<FirestoreFailure> failure)? checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(UserClass user)? setUserData,
    TResult Function(Option<FirestoreFailure> failure)? checkInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserData value) fetchData,
    required TResult Function(SetUserData value) setUserData,
    required TResult Function(checkConnection value) checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserData value)? fetchData,
    TResult? Function(SetUserData value)? setUserData,
    TResult? Function(checkConnection value)? checkInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserData value)? fetchData,
    TResult Function(SetUserData value)? setUserData,
    TResult Function(checkConnection value)? checkInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRepositoryEventCopyWith<$Res> {
  factory $UserRepositoryEventCopyWith(
          UserRepositoryEvent value, $Res Function(UserRepositoryEvent) then) =
      _$UserRepositoryEventCopyWithImpl<$Res, UserRepositoryEvent>;
}

/// @nodoc
class _$UserRepositoryEventCopyWithImpl<$Res, $Val extends UserRepositoryEvent>
    implements $UserRepositoryEventCopyWith<$Res> {
  _$UserRepositoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchUserDataImplCopyWith<$Res> {
  factory _$$FetchUserDataImplCopyWith(
          _$FetchUserDataImpl value, $Res Function(_$FetchUserDataImpl) then) =
      __$$FetchUserDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchUserDataImplCopyWithImpl<$Res>
    extends _$UserRepositoryEventCopyWithImpl<$Res, _$FetchUserDataImpl>
    implements _$$FetchUserDataImplCopyWith<$Res> {
  __$$FetchUserDataImplCopyWithImpl(
      _$FetchUserDataImpl _value, $Res Function(_$FetchUserDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchUserDataImpl
    with DiagnosticableTreeMixin
    implements FetchUserData {
  const _$FetchUserDataImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRepositoryEvent.fetchData()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'UserRepositoryEvent.fetchData'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchUserDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(UserClass user) setUserData,
    required TResult Function(Option<FirestoreFailure> failure) checkInternet,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
    TResult? Function(UserClass user)? setUserData,
    TResult? Function(Option<FirestoreFailure> failure)? checkInternet,
  }) {
    return fetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(UserClass user)? setUserData,
    TResult Function(Option<FirestoreFailure> failure)? checkInternet,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserData value) fetchData,
    required TResult Function(SetUserData value) setUserData,
    required TResult Function(checkConnection value) checkInternet,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserData value)? fetchData,
    TResult? Function(SetUserData value)? setUserData,
    TResult? Function(checkConnection value)? checkInternet,
  }) {
    return fetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserData value)? fetchData,
    TResult Function(SetUserData value)? setUserData,
    TResult Function(checkConnection value)? checkInternet,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class FetchUserData implements UserRepositoryEvent {
  const factory FetchUserData() = _$FetchUserDataImpl;
}

/// @nodoc
abstract class _$$SetUserDataImplCopyWith<$Res> {
  factory _$$SetUserDataImplCopyWith(
          _$SetUserDataImpl value, $Res Function(_$SetUserDataImpl) then) =
      __$$SetUserDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserClass user});

  $UserClassCopyWith<$Res> get user;
}

/// @nodoc
class __$$SetUserDataImplCopyWithImpl<$Res>
    extends _$UserRepositoryEventCopyWithImpl<$Res, _$SetUserDataImpl>
    implements _$$SetUserDataImplCopyWith<$Res> {
  __$$SetUserDataImplCopyWithImpl(
      _$SetUserDataImpl _value, $Res Function(_$SetUserDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$SetUserDataImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserClass,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserClassCopyWith<$Res> get user {
    return $UserClassCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$SetUserDataImpl with DiagnosticableTreeMixin implements SetUserData {
  const _$SetUserDataImpl(this.user);

  @override
  final UserClass user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRepositoryEvent.setUserData(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRepositoryEvent.setUserData'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetUserDataImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetUserDataImplCopyWith<_$SetUserDataImpl> get copyWith =>
      __$$SetUserDataImplCopyWithImpl<_$SetUserDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(UserClass user) setUserData,
    required TResult Function(Option<FirestoreFailure> failure) checkInternet,
  }) {
    return setUserData(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
    TResult? Function(UserClass user)? setUserData,
    TResult? Function(Option<FirestoreFailure> failure)? checkInternet,
  }) {
    return setUserData?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(UserClass user)? setUserData,
    TResult Function(Option<FirestoreFailure> failure)? checkInternet,
    required TResult orElse(),
  }) {
    if (setUserData != null) {
      return setUserData(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserData value) fetchData,
    required TResult Function(SetUserData value) setUserData,
    required TResult Function(checkConnection value) checkInternet,
  }) {
    return setUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserData value)? fetchData,
    TResult? Function(SetUserData value)? setUserData,
    TResult? Function(checkConnection value)? checkInternet,
  }) {
    return setUserData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserData value)? fetchData,
    TResult Function(SetUserData value)? setUserData,
    TResult Function(checkConnection value)? checkInternet,
    required TResult orElse(),
  }) {
    if (setUserData != null) {
      return setUserData(this);
    }
    return orElse();
  }
}

abstract class SetUserData implements UserRepositoryEvent {
  const factory SetUserData(final UserClass user) = _$SetUserDataImpl;

  UserClass get user;
  @JsonKey(ignore: true)
  _$$SetUserDataImplCopyWith<_$SetUserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$checkConnectionImplCopyWith<$Res> {
  factory _$$checkConnectionImplCopyWith(_$checkConnectionImpl value,
          $Res Function(_$checkConnectionImpl) then) =
      __$$checkConnectionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Option<FirestoreFailure> failure});
}

/// @nodoc
class __$$checkConnectionImplCopyWithImpl<$Res>
    extends _$UserRepositoryEventCopyWithImpl<$Res, _$checkConnectionImpl>
    implements _$$checkConnectionImplCopyWith<$Res> {
  __$$checkConnectionImplCopyWithImpl(
      _$checkConnectionImpl _value, $Res Function(_$checkConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$checkConnectionImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
    ));
  }
}

/// @nodoc

class _$checkConnectionImpl
    with DiagnosticableTreeMixin
    implements checkConnection {
  const _$checkConnectionImpl(this.failure);

  @override
  final Option<FirestoreFailure> failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRepositoryEvent.checkInternet(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRepositoryEvent.checkInternet'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$checkConnectionImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$checkConnectionImplCopyWith<_$checkConnectionImpl> get copyWith =>
      __$$checkConnectionImplCopyWithImpl<_$checkConnectionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function(UserClass user) setUserData,
    required TResult Function(Option<FirestoreFailure> failure) checkInternet,
  }) {
    return checkInternet(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchData,
    TResult? Function(UserClass user)? setUserData,
    TResult? Function(Option<FirestoreFailure> failure)? checkInternet,
  }) {
    return checkInternet?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function(UserClass user)? setUserData,
    TResult Function(Option<FirestoreFailure> failure)? checkInternet,
    required TResult orElse(),
  }) {
    if (checkInternet != null) {
      return checkInternet(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchUserData value) fetchData,
    required TResult Function(SetUserData value) setUserData,
    required TResult Function(checkConnection value) checkInternet,
  }) {
    return checkInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FetchUserData value)? fetchData,
    TResult? Function(SetUserData value)? setUserData,
    TResult? Function(checkConnection value)? checkInternet,
  }) {
    return checkInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchUserData value)? fetchData,
    TResult Function(SetUserData value)? setUserData,
    TResult Function(checkConnection value)? checkInternet,
    required TResult orElse(),
  }) {
    if (checkInternet != null) {
      return checkInternet(this);
    }
    return orElse();
  }
}

abstract class checkConnection implements UserRepositoryEvent {
  const factory checkConnection(final Option<FirestoreFailure> failure) =
      _$checkConnectionImpl;

  Option<FirestoreFailure> get failure;
  @JsonKey(ignore: true)
  _$$checkConnectionImplCopyWith<_$checkConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserRepositoryState {
  UserClass? get user => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  Option<FirestoreFailure> get failureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<Option<FirestoreFailure>, Unit> get internetConnection =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRepositoryStateCopyWith<UserRepositoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRepositoryStateCopyWith<$Res> {
  factory $UserRepositoryStateCopyWith(
          UserRepositoryState value, $Res Function(UserRepositoryState) then) =
      _$UserRepositoryStateCopyWithImpl<$Res, UserRepositoryState>;
  @useResult
  $Res call(
      {UserClass? user,
      bool isFetching,
      Option<FirestoreFailure> failureOrSuccess,
      Either<Option<FirestoreFailure>, Unit> internetConnection});

  $UserClassCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserRepositoryStateCopyWithImpl<$Res, $Val extends UserRepositoryState>
    implements $UserRepositoryStateCopyWith<$Res> {
  _$UserRepositoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isFetching = null,
    Object? failureOrSuccess = null,
    Object? internetConnection = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserClass?,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
      internetConnection: null == internetConnection
          ? _value.internetConnection
          : internetConnection // ignore: cast_nullable_to_non_nullable
              as Either<Option<FirestoreFailure>, Unit>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserClassCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserClassCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$userRepositoryImplCopyWith<$Res>
    implements $UserRepositoryStateCopyWith<$Res> {
  factory _$$userRepositoryImplCopyWith(_$userRepositoryImpl value,
          $Res Function(_$userRepositoryImpl) then) =
      __$$userRepositoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserClass? user,
      bool isFetching,
      Option<FirestoreFailure> failureOrSuccess,
      Either<Option<FirestoreFailure>, Unit> internetConnection});

  @override
  $UserClassCopyWith<$Res>? get user;
}

/// @nodoc
class __$$userRepositoryImplCopyWithImpl<$Res>
    extends _$UserRepositoryStateCopyWithImpl<$Res, _$userRepositoryImpl>
    implements _$$userRepositoryImplCopyWith<$Res> {
  __$$userRepositoryImplCopyWithImpl(
      _$userRepositoryImpl _value, $Res Function(_$userRepositoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? isFetching = null,
    Object? failureOrSuccess = null,
    Object? internetConnection = null,
  }) {
    return _then(_$userRepositoryImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserClass?,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
      internetConnection: null == internetConnection
          ? _value.internetConnection
          : internetConnection // ignore: cast_nullable_to_non_nullable
              as Either<Option<FirestoreFailure>, Unit>,
    ));
  }
}

/// @nodoc

class _$userRepositoryImpl
    with DiagnosticableTreeMixin
    implements _userRepository {
  const _$userRepositoryImpl(
      {required this.user,
      required this.isFetching,
      required this.failureOrSuccess,
      required this.internetConnection});

  @override
  final UserClass? user;
  @override
  final bool isFetching;
  @override
  final Option<FirestoreFailure> failureOrSuccess;
  @override
  final Either<Option<FirestoreFailure>, Unit> internetConnection;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'UserRepositoryState(user: $user, isFetching: $isFetching, failureOrSuccess: $failureOrSuccess, internetConnection: $internetConnection)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'UserRepositoryState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('isFetching', isFetching))
      ..add(DiagnosticsProperty('failureOrSuccess', failureOrSuccess))
      ..add(DiagnosticsProperty('internetConnection', internetConnection));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userRepositoryImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess) &&
            (identical(other.internetConnection, internetConnection) ||
                other.internetConnection == internetConnection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, isFetching, failureOrSuccess, internetConnection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userRepositoryImplCopyWith<_$userRepositoryImpl> get copyWith =>
      __$$userRepositoryImplCopyWithImpl<_$userRepositoryImpl>(
          this, _$identity);
}

abstract class _userRepository implements UserRepositoryState {
  const factory _userRepository(
      {required final UserClass? user,
      required final bool isFetching,
      required final Option<FirestoreFailure> failureOrSuccess,
      required final Either<Option<FirestoreFailure>, Unit>
          internetConnection}) = _$userRepositoryImpl;

  @override
  UserClass? get user;
  @override
  bool get isFetching;
  @override
  Option<FirestoreFailure> get failureOrSuccess;
  @override
  Either<Option<FirestoreFailure>, Unit> get internetConnection;
  @override
  @JsonKey(ignore: true)
  _$$userRepositoryImplCopyWith<_$userRepositoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
