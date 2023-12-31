// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerWithEmailAndPasword,
    required TResult Function(String email, String password)
        signInWithEmailAndPasword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        registerWithEmailAndPasword,
    TResult? Function(String email, String password)? signInWithEmailAndPasword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPasword,
    TResult Function(String email, String password)? signInWithEmailAndPasword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterWithEmailAndPasword value)
        registerWithEmailAndPasword,
    required TResult Function(SignInWithEmailAndPasword value)
        signInWithEmailAndPasword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterWithEmailAndPasword value)?
        registerWithEmailAndPasword,
    TResult? Function(SignInWithEmailAndPasword value)?
        signInWithEmailAndPasword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterWithEmailAndPasword value)?
        registerWithEmailAndPasword,
    TResult Function(SignInWithEmailAndPasword value)?
        signInWithEmailAndPasword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInEventCopyWith<SignInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPaswordImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPaswordImplCopyWith(
          _$RegisterWithEmailAndPaswordImpl value,
          $Res Function(_$RegisterWithEmailAndPaswordImpl) then) =
      __$$RegisterWithEmailAndPaswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$RegisterWithEmailAndPaswordImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$RegisterWithEmailAndPaswordImpl>
    implements _$$RegisterWithEmailAndPaswordImplCopyWith<$Res> {
  __$$RegisterWithEmailAndPaswordImplCopyWithImpl(
      _$RegisterWithEmailAndPaswordImpl _value,
      $Res Function(_$RegisterWithEmailAndPaswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$RegisterWithEmailAndPaswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterWithEmailAndPaswordImpl implements RegisterWithEmailAndPasword {
  const _$RegisterWithEmailAndPaswordImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.registerWithEmailAndPasword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPaswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterWithEmailAndPaswordImplCopyWith<_$RegisterWithEmailAndPaswordImpl>
      get copyWith => __$$RegisterWithEmailAndPaswordImplCopyWithImpl<
          _$RegisterWithEmailAndPaswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerWithEmailAndPasword,
    required TResult Function(String email, String password)
        signInWithEmailAndPasword,
  }) {
    return registerWithEmailAndPasword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        registerWithEmailAndPasword,
    TResult? Function(String email, String password)? signInWithEmailAndPasword,
  }) {
    return registerWithEmailAndPasword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPasword,
    TResult Function(String email, String password)? signInWithEmailAndPasword,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasword != null) {
      return registerWithEmailAndPasword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterWithEmailAndPasword value)
        registerWithEmailAndPasword,
    required TResult Function(SignInWithEmailAndPasword value)
        signInWithEmailAndPasword,
  }) {
    return registerWithEmailAndPasword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterWithEmailAndPasword value)?
        registerWithEmailAndPasword,
    TResult? Function(SignInWithEmailAndPasword value)?
        signInWithEmailAndPasword,
  }) {
    return registerWithEmailAndPasword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterWithEmailAndPasword value)?
        registerWithEmailAndPasword,
    TResult Function(SignInWithEmailAndPasword value)?
        signInWithEmailAndPasword,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasword != null) {
      return registerWithEmailAndPasword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasword implements SignInEvent {
  const factory RegisterWithEmailAndPasword(
          final String email, final String password) =
      _$RegisterWithEmailAndPaswordImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$RegisterWithEmailAndPaswordImplCopyWith<_$RegisterWithEmailAndPaswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPaswordImplCopyWith<$Res>
    implements $SignInEventCopyWith<$Res> {
  factory _$$SignInWithEmailAndPaswordImplCopyWith(
          _$SignInWithEmailAndPaswordImpl value,
          $Res Function(_$SignInWithEmailAndPaswordImpl) then) =
      __$$SignInWithEmailAndPaswordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignInWithEmailAndPaswordImplCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$SignInWithEmailAndPaswordImpl>
    implements _$$SignInWithEmailAndPaswordImplCopyWith<$Res> {
  __$$SignInWithEmailAndPaswordImplCopyWithImpl(
      _$SignInWithEmailAndPaswordImpl _value,
      $Res Function(_$SignInWithEmailAndPaswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignInWithEmailAndPaswordImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignInWithEmailAndPaswordImpl implements SignInWithEmailAndPasword {
  const _$SignInWithEmailAndPaswordImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignInEvent.signInWithEmailAndPasword(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPaswordImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInWithEmailAndPaswordImplCopyWith<_$SignInWithEmailAndPaswordImpl>
      get copyWith => __$$SignInWithEmailAndPaswordImplCopyWithImpl<
          _$SignInWithEmailAndPaswordImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password)
        registerWithEmailAndPasword,
    required TResult Function(String email, String password)
        signInWithEmailAndPasword,
  }) {
    return signInWithEmailAndPasword(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)?
        registerWithEmailAndPasword,
    TResult? Function(String email, String password)? signInWithEmailAndPasword,
  }) {
    return signInWithEmailAndPasword?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)?
        registerWithEmailAndPasword,
    TResult Function(String email, String password)? signInWithEmailAndPasword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasword != null) {
      return signInWithEmailAndPasword(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterWithEmailAndPasword value)
        registerWithEmailAndPasword,
    required TResult Function(SignInWithEmailAndPasword value)
        signInWithEmailAndPasword,
  }) {
    return signInWithEmailAndPasword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterWithEmailAndPasword value)?
        registerWithEmailAndPasword,
    TResult? Function(SignInWithEmailAndPasword value)?
        signInWithEmailAndPasword,
  }) {
    return signInWithEmailAndPasword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterWithEmailAndPasword value)?
        registerWithEmailAndPasword,
    TResult Function(SignInWithEmailAndPasword value)?
        signInWithEmailAndPasword,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasword != null) {
      return signInWithEmailAndPasword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasword implements SignInEvent {
  const factory SignInWithEmailAndPasword(
          final String email, final String password) =
      _$SignInWithEmailAndPaswordImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignInWithEmailAndPaswordImplCopyWith<_$SignInWithEmailAndPaswordImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  String get emailAddress => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call(
      {String emailAddress,
      String password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInStateImplCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$SignInStateImplCopyWith(
          _$SignInStateImpl value, $Res Function(_$SignInStateImpl) then) =
      __$$SignInStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String emailAddress,
      String password,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess});
}

/// @nodoc
class __$$SignInStateImplCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$SignInStateImpl>
    implements _$$SignInStateImplCopyWith<$Res> {
  __$$SignInStateImplCopyWithImpl(
      _$SignInStateImpl _value, $Res Function(_$SignInStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? authFailureOrSuccess = null,
  }) {
    return _then(_$SignInStateImpl(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccess: null == authFailureOrSuccess
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SignInStateImpl implements _SignInState {
  const _$SignInStateImpl(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.authFailureOrSuccess});

  @override
  final String emailAddress;
  @override
  final String password;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;

  @override
  String toString() {
    return 'SignInState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, authFailureOrSuccess: $authFailureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInStateImpl &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                other.authFailureOrSuccess == authFailureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emailAddress, password, isSubmitting, authFailureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      __$$SignInStateImplCopyWithImpl<_$SignInStateImpl>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final String emailAddress,
      required final String password,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccess}) = _$SignInStateImpl;

  @override
  String get emailAddress;
  @override
  String get password;
  @override
  bool get isSubmitting;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$SignInStateImplCopyWith<_$SignInStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
