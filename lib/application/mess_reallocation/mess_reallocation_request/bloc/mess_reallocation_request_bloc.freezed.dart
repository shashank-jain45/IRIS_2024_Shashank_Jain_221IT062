// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_reallocation_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessReallocationRequestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(bool isApproved, UserClass user) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(bool isApproved, UserClass user)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(bool isApproved, UserClass user)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(UpdateStatus value) updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(UpdateStatus value)? updateStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessReallocationRequestEventCopyWith<$Res> {
  factory $MessReallocationRequestEventCopyWith(
          MessReallocationRequestEvent value,
          $Res Function(MessReallocationRequestEvent) then) =
      _$MessReallocationRequestEventCopyWithImpl<$Res,
          MessReallocationRequestEvent>;
}

/// @nodoc
class _$MessReallocationRequestEventCopyWithImpl<$Res,
        $Val extends MessReallocationRequestEvent>
    implements $MessReallocationRequestEventCopyWith<$Res> {
  _$MessReallocationRequestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchImplCopyWith<$Res> {
  factory _$$FetchImplCopyWith(
          _$FetchImpl value, $Res Function(_$FetchImpl) then) =
      __$$FetchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchImplCopyWithImpl<$Res>
    extends _$MessReallocationRequestEventCopyWithImpl<$Res, _$FetchImpl>
    implements _$$FetchImplCopyWith<$Res> {
  __$$FetchImplCopyWithImpl(
      _$FetchImpl _value, $Res Function(_$FetchImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchImpl implements Fetch {
  const _$FetchImpl();

  @override
  String toString() {
    return 'MessReallocationRequestEvent.fetch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(bool isApproved, UserClass user) updateStatus,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(bool isApproved, UserClass user)? updateStatus,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(bool isApproved, UserClass user)? updateStatus,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(UpdateStatus value) updateStatus,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(UpdateStatus value)? updateStatus,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class Fetch implements MessReallocationRequestEvent {
  const factory Fetch() = _$FetchImpl;
}

/// @nodoc
abstract class _$$UpdateStatusImplCopyWith<$Res> {
  factory _$$UpdateStatusImplCopyWith(
          _$UpdateStatusImpl value, $Res Function(_$UpdateStatusImpl) then) =
      __$$UpdateStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isApproved, UserClass user});

  $UserClassCopyWith<$Res> get user;
}

/// @nodoc
class __$$UpdateStatusImplCopyWithImpl<$Res>
    extends _$MessReallocationRequestEventCopyWithImpl<$Res, _$UpdateStatusImpl>
    implements _$$UpdateStatusImplCopyWith<$Res> {
  __$$UpdateStatusImplCopyWithImpl(
      _$UpdateStatusImpl _value, $Res Function(_$UpdateStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isApproved = null,
    Object? user = null,
  }) {
    return _then(_$UpdateStatusImpl(
      null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
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

class _$UpdateStatusImpl implements UpdateStatus {
  const _$UpdateStatusImpl(this.isApproved, this.user);

  @override
  final bool isApproved;
  @override
  final UserClass user;

  @override
  String toString() {
    return 'MessReallocationRequestEvent.updateStatus(isApproved: $isApproved, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateStatusImpl &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isApproved, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      __$$UpdateStatusImplCopyWithImpl<_$UpdateStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(bool isApproved, UserClass user) updateStatus,
  }) {
    return updateStatus(isApproved, user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetch,
    TResult? Function(bool isApproved, UserClass user)? updateStatus,
  }) {
    return updateStatus?.call(isApproved, user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(bool isApproved, UserClass user)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(isApproved, user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Fetch value) fetch,
    required TResult Function(UpdateStatus value) updateStatus,
  }) {
    return updateStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Fetch value)? fetch,
    TResult? Function(UpdateStatus value)? updateStatus,
  }) {
    return updateStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Fetch value)? fetch,
    TResult Function(UpdateStatus value)? updateStatus,
    required TResult orElse(),
  }) {
    if (updateStatus != null) {
      return updateStatus(this);
    }
    return orElse();
  }
}

abstract class UpdateStatus implements MessReallocationRequestEvent {
  const factory UpdateStatus(final bool isApproved, final UserClass user) =
      _$UpdateStatusImpl;

  bool get isApproved;
  UserClass get user;
  @JsonKey(ignore: true)
  _$$UpdateStatusImplCopyWith<_$UpdateStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessReallocationRequestState {
  Option<List<UserClass>> get requests => throw _privateConstructorUsedError;
  bool get isFetching => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<FirestoreFailure> get failure => throw _privateConstructorUsedError;
  Option<bool> get isApproved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessReallocationRequestStateCopyWith<MessReallocationRequestState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessReallocationRequestStateCopyWith<$Res> {
  factory $MessReallocationRequestStateCopyWith(
          MessReallocationRequestState value,
          $Res Function(MessReallocationRequestState) then) =
      _$MessReallocationRequestStateCopyWithImpl<$Res,
          MessReallocationRequestState>;
  @useResult
  $Res call(
      {Option<List<UserClass>> requests,
      bool isFetching,
      bool isSubmitting,
      Option<FirestoreFailure> failure,
      Option<bool> isApproved});
}

/// @nodoc
class _$MessReallocationRequestStateCopyWithImpl<$Res,
        $Val extends MessReallocationRequestState>
    implements $MessReallocationRequestStateCopyWith<$Res> {
  _$MessReallocationRequestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
    Object? isFetching = null,
    Object? isSubmitting = null,
    Object? failure = null,
    Object? isApproved = null,
  }) {
    return _then(_value.copyWith(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Option<List<UserClass>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$messReallocationRequestImplCopyWith<$Res>
    implements $MessReallocationRequestStateCopyWith<$Res> {
  factory _$$messReallocationRequestImplCopyWith(
          _$messReallocationRequestImpl value,
          $Res Function(_$messReallocationRequestImpl) then) =
      __$$messReallocationRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<List<UserClass>> requests,
      bool isFetching,
      bool isSubmitting,
      Option<FirestoreFailure> failure,
      Option<bool> isApproved});
}

/// @nodoc
class __$$messReallocationRequestImplCopyWithImpl<$Res>
    extends _$MessReallocationRequestStateCopyWithImpl<$Res,
        _$messReallocationRequestImpl>
    implements _$$messReallocationRequestImplCopyWith<$Res> {
  __$$messReallocationRequestImplCopyWithImpl(
      _$messReallocationRequestImpl _value,
      $Res Function(_$messReallocationRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requests = null,
    Object? isFetching = null,
    Object? isSubmitting = null,
    Object? failure = null,
    Object? isApproved = null,
  }) {
    return _then(_$messReallocationRequestImpl(
      requests: null == requests
          ? _value.requests
          : requests // ignore: cast_nullable_to_non_nullable
              as Option<List<UserClass>>,
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Option<FirestoreFailure>,
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$messReallocationRequestImpl implements _messReallocationRequest {
  const _$messReallocationRequestImpl(
      {required this.requests,
      required this.isFetching,
      required this.isSubmitting,
      required this.failure,
      required this.isApproved});

  @override
  final Option<List<UserClass>> requests;
  @override
  final bool isFetching;
  @override
  final bool isSubmitting;
  @override
  final Option<FirestoreFailure> failure;
  @override
  final Option<bool> isApproved;

  @override
  String toString() {
    return 'MessReallocationRequestState(requests: $requests, isFetching: $isFetching, isSubmitting: $isSubmitting, failure: $failure, isApproved: $isApproved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$messReallocationRequestImpl &&
            (identical(other.requests, requests) ||
                other.requests == requests) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, requests, isFetching, isSubmitting, failure, isApproved);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$messReallocationRequestImplCopyWith<_$messReallocationRequestImpl>
      get copyWith => __$$messReallocationRequestImplCopyWithImpl<
          _$messReallocationRequestImpl>(this, _$identity);
}

abstract class _messReallocationRequest
    implements MessReallocationRequestState {
  const factory _messReallocationRequest(
      {required final Option<List<UserClass>> requests,
      required final bool isFetching,
      required final bool isSubmitting,
      required final Option<FirestoreFailure> failure,
      required final Option<bool> isApproved}) = _$messReallocationRequestImpl;

  @override
  Option<List<UserClass>> get requests;
  @override
  bool get isFetching;
  @override
  bool get isSubmitting;
  @override
  Option<FirestoreFailure> get failure;
  @override
  Option<bool> get isApproved;
  @override
  @JsonKey(ignore: true)
  _$$messReallocationRequestImplCopyWith<_$messReallocationRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
