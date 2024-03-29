// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_registration_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessRegistrationEvent {
  String get messName => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get oldMess => throw _privateConstructorUsedError;
  double get messCharge => throw _privateConstructorUsedError;
  Menu get menu => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messName, String? userId, String? oldMess,
            double messCharge, Menu menu)
        apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messName, String? userId, String? oldMess,
            double messCharge, Menu menu)?
        apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messName, String? userId, String? oldMess,
            double messCharge, Menu menu)?
        apply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessRegistrationEventApply value) apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessRegistrationEventApply value)? apply,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessRegistrationEventApply value)? apply,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessRegistrationEventCopyWith<MessRegistrationEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessRegistrationEventCopyWith<$Res> {
  factory $MessRegistrationEventCopyWith(MessRegistrationEvent value,
          $Res Function(MessRegistrationEvent) then) =
      _$MessRegistrationEventCopyWithImpl<$Res, MessRegistrationEvent>;
  @useResult
  $Res call(
      {String messName,
      String? userId,
      String? oldMess,
      double messCharge,
      Menu menu});

  $MenuCopyWith<$Res> get menu;
}

/// @nodoc
class _$MessRegistrationEventCopyWithImpl<$Res,
        $Val extends MessRegistrationEvent>
    implements $MessRegistrationEventCopyWith<$Res> {
  _$MessRegistrationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messName = null,
    Object? userId = freezed,
    Object? oldMess = freezed,
    Object? messCharge = null,
    Object? menu = null,
  }) {
    return _then(_value.copyWith(
      messName: null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      oldMess: freezed == oldMess
          ? _value.oldMess
          : oldMess // ignore: cast_nullable_to_non_nullable
              as String?,
      messCharge: null == messCharge
          ? _value.messCharge
          : messCharge // ignore: cast_nullable_to_non_nullable
              as double,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuCopyWith<$Res> get menu {
    return $MenuCopyWith<$Res>(_value.menu, (value) {
      return _then(_value.copyWith(menu: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MessRegistrationEventApplyImplCopyWith<$Res>
    implements $MessRegistrationEventCopyWith<$Res> {
  factory _$$MessRegistrationEventApplyImplCopyWith(
          _$MessRegistrationEventApplyImpl value,
          $Res Function(_$MessRegistrationEventApplyImpl) then) =
      __$$MessRegistrationEventApplyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String messName,
      String? userId,
      String? oldMess,
      double messCharge,
      Menu menu});

  @override
  $MenuCopyWith<$Res> get menu;
}

/// @nodoc
class __$$MessRegistrationEventApplyImplCopyWithImpl<$Res>
    extends _$MessRegistrationEventCopyWithImpl<$Res,
        _$MessRegistrationEventApplyImpl>
    implements _$$MessRegistrationEventApplyImplCopyWith<$Res> {
  __$$MessRegistrationEventApplyImplCopyWithImpl(
      _$MessRegistrationEventApplyImpl _value,
      $Res Function(_$MessRegistrationEventApplyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messName = null,
    Object? userId = freezed,
    Object? oldMess = freezed,
    Object? messCharge = null,
    Object? menu = null,
  }) {
    return _then(_$MessRegistrationEventApplyImpl(
      null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == oldMess
          ? _value.oldMess
          : oldMess // ignore: cast_nullable_to_non_nullable
              as String?,
      null == messCharge
          ? _value.messCharge
          : messCharge // ignore: cast_nullable_to_non_nullable
              as double,
      null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu,
    ));
  }
}

/// @nodoc

class _$MessRegistrationEventApplyImpl implements MessRegistrationEventApply {
  const _$MessRegistrationEventApplyImpl(
      this.messName, this.userId, this.oldMess, this.messCharge, this.menu);

  @override
  final String messName;
  @override
  final String? userId;
  @override
  final String? oldMess;
  @override
  final double messCharge;
  @override
  final Menu menu;

  @override
  String toString() {
    return 'MessRegistrationEvent.apply(messName: $messName, userId: $userId, oldMess: $oldMess, messCharge: $messCharge, menu: $menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessRegistrationEventApplyImpl &&
            (identical(other.messName, messName) ||
                other.messName == messName) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.oldMess, oldMess) || other.oldMess == oldMess) &&
            (identical(other.messCharge, messCharge) ||
                other.messCharge == messCharge) &&
            (identical(other.menu, menu) || other.menu == menu));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, messName, userId, oldMess, messCharge, menu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessRegistrationEventApplyImplCopyWith<_$MessRegistrationEventApplyImpl>
      get copyWith => __$$MessRegistrationEventApplyImplCopyWithImpl<
          _$MessRegistrationEventApplyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String messName, String? userId, String? oldMess,
            double messCharge, Menu menu)
        apply,
  }) {
    return apply(messName, userId, oldMess, messCharge, menu);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String messName, String? userId, String? oldMess,
            double messCharge, Menu menu)?
        apply,
  }) {
    return apply?.call(messName, userId, oldMess, messCharge, menu);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String messName, String? userId, String? oldMess,
            double messCharge, Menu menu)?
        apply,
    required TResult orElse(),
  }) {
    if (apply != null) {
      return apply(messName, userId, oldMess, messCharge, menu);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MessRegistrationEventApply value) apply,
  }) {
    return apply(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MessRegistrationEventApply value)? apply,
  }) {
    return apply?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MessRegistrationEventApply value)? apply,
    required TResult orElse(),
  }) {
    if (apply != null) {
      return apply(this);
    }
    return orElse();
  }
}

abstract class MessRegistrationEventApply implements MessRegistrationEvent {
  const factory MessRegistrationEventApply(
      final String messName,
      final String? userId,
      final String? oldMess,
      final double messCharge,
      final Menu menu) = _$MessRegistrationEventApplyImpl;

  @override
  String get messName;
  @override
  String? get userId;
  @override
  String? get oldMess;
  @override
  double get messCharge;
  @override
  Menu get menu;
  @override
  @JsonKey(ignore: true)
  _$$MessRegistrationEventApplyImplCopyWith<_$MessRegistrationEventApplyImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessRegistrationState {
  bool get isFetching => throw _privateConstructorUsedError;
  Either<Option<FirestoreFailure>, Unit> get failure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessRegistrationStateCopyWith<MessRegistrationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessRegistrationStateCopyWith<$Res> {
  factory $MessRegistrationStateCopyWith(MessRegistrationState value,
          $Res Function(MessRegistrationState) then) =
      _$MessRegistrationStateCopyWithImpl<$Res, MessRegistrationState>;
  @useResult
  $Res call({bool isFetching, Either<Option<FirestoreFailure>, Unit> failure});
}

/// @nodoc
class _$MessRegistrationStateCopyWithImpl<$Res,
        $Val extends MessRegistrationState>
    implements $MessRegistrationStateCopyWith<$Res> {
  _$MessRegistrationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetching = null,
    Object? failure = null,
  }) {
    return _then(_value.copyWith(
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Either<Option<FirestoreFailure>, Unit>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessRegistrationStateImplCopyWith<$Res>
    implements $MessRegistrationStateCopyWith<$Res> {
  factory _$$MessRegistrationStateImplCopyWith(
          _$MessRegistrationStateImpl value,
          $Res Function(_$MessRegistrationStateImpl) then) =
      __$$MessRegistrationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFetching, Either<Option<FirestoreFailure>, Unit> failure});
}

/// @nodoc
class __$$MessRegistrationStateImplCopyWithImpl<$Res>
    extends _$MessRegistrationStateCopyWithImpl<$Res,
        _$MessRegistrationStateImpl>
    implements _$$MessRegistrationStateImplCopyWith<$Res> {
  __$$MessRegistrationStateImplCopyWithImpl(_$MessRegistrationStateImpl _value,
      $Res Function(_$MessRegistrationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFetching = null,
    Object? failure = null,
  }) {
    return _then(_$MessRegistrationStateImpl(
      isFetching: null == isFetching
          ? _value.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Either<Option<FirestoreFailure>, Unit>,
    ));
  }
}

/// @nodoc

class _$MessRegistrationStateImpl implements _MessRegistrationState {
  const _$MessRegistrationStateImpl(
      {required this.isFetching, required this.failure});

  @override
  final bool isFetching;
  @override
  final Either<Option<FirestoreFailure>, Unit> failure;

  @override
  String toString() {
    return 'MessRegistrationState(isFetching: $isFetching, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessRegistrationStateImpl &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFetching, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessRegistrationStateImplCopyWith<_$MessRegistrationStateImpl>
      get copyWith => __$$MessRegistrationStateImplCopyWithImpl<
          _$MessRegistrationStateImpl>(this, _$identity);
}

abstract class _MessRegistrationState implements MessRegistrationState {
  const factory _MessRegistrationState(
          {required final bool isFetching,
          required final Either<Option<FirestoreFailure>, Unit> failure}) =
      _$MessRegistrationStateImpl;

  @override
  bool get isFetching;
  @override
  Either<Option<FirestoreFailure>, Unit> get failure;
  @override
  @JsonKey(ignore: true)
  _$$MessRegistrationStateImplCopyWith<_$MessRegistrationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
