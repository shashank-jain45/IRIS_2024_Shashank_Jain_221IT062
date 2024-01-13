// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FirestoreFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cacelled,
    required TResult Function() notFound,
    required TResult Function() permissionDenied,
    required TResult Function() unathenticated,
    required TResult Function() noInternnet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cacelled,
    TResult? Function()? notFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? unathenticated,
    TResult? Function()? noInternnet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cacelled,
    TResult Function()? notFound,
    TResult Function()? permissionDenied,
    TResult Function()? unathenticated,
    TResult Function()? noInternnet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cancelled value) cacelled,
    required TResult Function(NotFound value) notFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Unauthenticated value) unathenticated,
    required TResult Function(NoInternnet value) noInternnet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cancelled value)? cacelled,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Unauthenticated value)? unathenticated,
    TResult? Function(NoInternnet value)? noInternnet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cancelled value)? cacelled,
    TResult Function(NotFound value)? notFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Unauthenticated value)? unathenticated,
    TResult Function(NoInternnet value)? noInternnet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreFailureCopyWith<$Res> {
  factory $FirestoreFailureCopyWith(
          FirestoreFailure value, $Res Function(FirestoreFailure) then) =
      _$FirestoreFailureCopyWithImpl<$Res, FirestoreFailure>;
}

/// @nodoc
class _$FirestoreFailureCopyWithImpl<$Res, $Val extends FirestoreFailure>
    implements $FirestoreFailureCopyWith<$Res> {
  _$FirestoreFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CancelledImplCopyWith<$Res> {
  factory _$$CancelledImplCopyWith(
          _$CancelledImpl value, $Res Function(_$CancelledImpl) then) =
      __$$CancelledImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledImplCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$CancelledImpl>
    implements _$$CancelledImplCopyWith<$Res> {
  __$$CancelledImplCopyWithImpl(
      _$CancelledImpl _value, $Res Function(_$CancelledImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledImpl implements Cancelled {
  const _$CancelledImpl();

  @override
  String toString() {
    return 'FirestoreFailure.cacelled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cacelled,
    required TResult Function() notFound,
    required TResult Function() permissionDenied,
    required TResult Function() unathenticated,
    required TResult Function() noInternnet,
  }) {
    return cacelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cacelled,
    TResult? Function()? notFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? unathenticated,
    TResult? Function()? noInternnet,
  }) {
    return cacelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cacelled,
    TResult Function()? notFound,
    TResult Function()? permissionDenied,
    TResult Function()? unathenticated,
    TResult Function()? noInternnet,
    required TResult orElse(),
  }) {
    if (cacelled != null) {
      return cacelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cancelled value) cacelled,
    required TResult Function(NotFound value) notFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Unauthenticated value) unathenticated,
    required TResult Function(NoInternnet value) noInternnet,
  }) {
    return cacelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cancelled value)? cacelled,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Unauthenticated value)? unathenticated,
    TResult? Function(NoInternnet value)? noInternnet,
  }) {
    return cacelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cancelled value)? cacelled,
    TResult Function(NotFound value)? notFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Unauthenticated value)? unathenticated,
    TResult Function(NoInternnet value)? noInternnet,
    required TResult orElse(),
  }) {
    if (cacelled != null) {
      return cacelled(this);
    }
    return orElse();
  }
}

abstract class Cancelled implements FirestoreFailure {
  const factory Cancelled() = _$CancelledImpl;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'FirestoreFailure.notFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cacelled,
    required TResult Function() notFound,
    required TResult Function() permissionDenied,
    required TResult Function() unathenticated,
    required TResult Function() noInternnet,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cacelled,
    TResult? Function()? notFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? unathenticated,
    TResult? Function()? noInternnet,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cacelled,
    TResult Function()? notFound,
    TResult Function()? permissionDenied,
    TResult Function()? unathenticated,
    TResult Function()? noInternnet,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cancelled value) cacelled,
    required TResult Function(NotFound value) notFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Unauthenticated value) unathenticated,
    required TResult Function(NoInternnet value) noInternnet,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cancelled value)? cacelled,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Unauthenticated value)? unathenticated,
    TResult? Function(NoInternnet value)? noInternnet,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cancelled value)? cacelled,
    TResult Function(NotFound value)? notFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Unauthenticated value)? unathenticated,
    TResult Function(NoInternnet value)? noInternnet,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements FirestoreFailure {
  const factory NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(_$PermissionDeniedImpl value,
          $Res Function(_$PermissionDeniedImpl) then) =
      __$$PermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(_$PermissionDeniedImpl _value,
      $Res Function(_$PermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionDeniedImpl implements PermissionDenied {
  const _$PermissionDeniedImpl();

  @override
  String toString() {
    return 'FirestoreFailure.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cacelled,
    required TResult Function() notFound,
    required TResult Function() permissionDenied,
    required TResult Function() unathenticated,
    required TResult Function() noInternnet,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cacelled,
    TResult? Function()? notFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? unathenticated,
    TResult? Function()? noInternnet,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cacelled,
    TResult Function()? notFound,
    TResult Function()? permissionDenied,
    TResult Function()? unathenticated,
    TResult Function()? noInternnet,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cancelled value) cacelled,
    required TResult Function(NotFound value) notFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Unauthenticated value) unathenticated,
    required TResult Function(NoInternnet value) noInternnet,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cancelled value)? cacelled,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Unauthenticated value)? unathenticated,
    TResult? Function(NoInternnet value)? noInternnet,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cancelled value)? cacelled,
    TResult Function(NotFound value)? notFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Unauthenticated value)? unathenticated,
    TResult Function(NoInternnet value)? noInternnet,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDenied implements FirestoreFailure {
  const factory PermissionDenied() = _$PermissionDeniedImpl;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(_$UnauthenticatedImpl value,
          $Res Function(_$UnauthenticatedImpl) then) =
      __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
      _$UnauthenticatedImpl _value, $Res Function(_$UnauthenticatedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthenticatedImpl implements Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'FirestoreFailure.unathenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cacelled,
    required TResult Function() notFound,
    required TResult Function() permissionDenied,
    required TResult Function() unathenticated,
    required TResult Function() noInternnet,
  }) {
    return unathenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cacelled,
    TResult? Function()? notFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? unathenticated,
    TResult? Function()? noInternnet,
  }) {
    return unathenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cacelled,
    TResult Function()? notFound,
    TResult Function()? permissionDenied,
    TResult Function()? unathenticated,
    TResult Function()? noInternnet,
    required TResult orElse(),
  }) {
    if (unathenticated != null) {
      return unathenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cancelled value) cacelled,
    required TResult Function(NotFound value) notFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Unauthenticated value) unathenticated,
    required TResult Function(NoInternnet value) noInternnet,
  }) {
    return unathenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cancelled value)? cacelled,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Unauthenticated value)? unathenticated,
    TResult? Function(NoInternnet value)? noInternnet,
  }) {
    return unathenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cancelled value)? cacelled,
    TResult Function(NotFound value)? notFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Unauthenticated value)? unathenticated,
    TResult Function(NoInternnet value)? noInternnet,
    required TResult orElse(),
  }) {
    if (unathenticated != null) {
      return unathenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements FirestoreFailure {
  const factory Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$NoInternnetImplCopyWith<$Res> {
  factory _$$NoInternnetImplCopyWith(
          _$NoInternnetImpl value, $Res Function(_$NoInternnetImpl) then) =
      __$$NoInternnetImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoInternnetImplCopyWithImpl<$Res>
    extends _$FirestoreFailureCopyWithImpl<$Res, _$NoInternnetImpl>
    implements _$$NoInternnetImplCopyWith<$Res> {
  __$$NoInternnetImplCopyWithImpl(
      _$NoInternnetImpl _value, $Res Function(_$NoInternnetImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoInternnetImpl implements NoInternnet {
  const _$NoInternnetImpl();

  @override
  String toString() {
    return 'FirestoreFailure.noInternnet()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoInternnetImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cacelled,
    required TResult Function() notFound,
    required TResult Function() permissionDenied,
    required TResult Function() unathenticated,
    required TResult Function() noInternnet,
  }) {
    return noInternnet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cacelled,
    TResult? Function()? notFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? unathenticated,
    TResult? Function()? noInternnet,
  }) {
    return noInternnet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cacelled,
    TResult Function()? notFound,
    TResult Function()? permissionDenied,
    TResult Function()? unathenticated,
    TResult Function()? noInternnet,
    required TResult orElse(),
  }) {
    if (noInternnet != null) {
      return noInternnet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cancelled value) cacelled,
    required TResult Function(NotFound value) notFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(Unauthenticated value) unathenticated,
    required TResult Function(NoInternnet value) noInternnet,
  }) {
    return noInternnet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cancelled value)? cacelled,
    TResult? Function(NotFound value)? notFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(Unauthenticated value)? unathenticated,
    TResult? Function(NoInternnet value)? noInternnet,
  }) {
    return noInternnet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cancelled value)? cacelled,
    TResult Function(NotFound value)? notFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(Unauthenticated value)? unathenticated,
    TResult Function(NoInternnet value)? noInternnet,
    required TResult orElse(),
  }) {
    if (noInternnet != null) {
      return noInternnet(this);
    }
    return orElse();
  }
}

abstract class NoInternnet implements FirestoreFailure {
  const factory NoInternnet() = _$NoInternnetImpl;
}
