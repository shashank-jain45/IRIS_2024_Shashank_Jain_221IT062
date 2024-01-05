// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mess _$MessFromJson(Map<String, dynamic> json) {
  return _Mess.fromJson(json);
}

/// @nodoc
mixin _$Mess {
  String get messName => throw _privateConstructorUsedError;
  int get totalSeats => throw _privateConstructorUsedError;
  int? get noOfUsersRegistered => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessCopyWith<Mess> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessCopyWith<$Res> {
  factory $MessCopyWith(Mess value, $Res Function(Mess) then) =
      _$MessCopyWithImpl<$Res, Mess>;
  @useResult
  $Res call({String messName, int totalSeats, int? noOfUsersRegistered});
}

/// @nodoc
class _$MessCopyWithImpl<$Res, $Val extends Mess>
    implements $MessCopyWith<$Res> {
  _$MessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messName = null,
    Object? totalSeats = null,
    Object? noOfUsersRegistered = freezed,
  }) {
    return _then(_value.copyWith(
      messName: null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
      totalSeats: null == totalSeats
          ? _value.totalSeats
          : totalSeats // ignore: cast_nullable_to_non_nullable
              as int,
      noOfUsersRegistered: freezed == noOfUsersRegistered
          ? _value.noOfUsersRegistered
          : noOfUsersRegistered // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MessImplCopyWith<$Res> implements $MessCopyWith<$Res> {
  factory _$$MessImplCopyWith(
          _$MessImpl value, $Res Function(_$MessImpl) then) =
      __$$MessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messName, int totalSeats, int? noOfUsersRegistered});
}

/// @nodoc
class __$$MessImplCopyWithImpl<$Res>
    extends _$MessCopyWithImpl<$Res, _$MessImpl>
    implements _$$MessImplCopyWith<$Res> {
  __$$MessImplCopyWithImpl(_$MessImpl _value, $Res Function(_$MessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messName = null,
    Object? totalSeats = null,
    Object? noOfUsersRegistered = freezed,
  }) {
    return _then(_$MessImpl(
      messName: null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
      totalSeats: null == totalSeats
          ? _value.totalSeats
          : totalSeats // ignore: cast_nullable_to_non_nullable
              as int,
      noOfUsersRegistered: freezed == noOfUsersRegistered
          ? _value.noOfUsersRegistered
          : noOfUsersRegistered // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessImpl implements _Mess {
  const _$MessImpl(
      {required this.messName,
      required this.totalSeats,
      this.noOfUsersRegistered = 0});

  factory _$MessImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessImplFromJson(json);

  @override
  final String messName;
  @override
  final int totalSeats;
  @override
  @JsonKey()
  final int? noOfUsersRegistered;

  @override
  String toString() {
    return 'Mess(messName: $messName, totalSeats: $totalSeats, noOfUsersRegistered: $noOfUsersRegistered)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessImpl &&
            (identical(other.messName, messName) ||
                other.messName == messName) &&
            (identical(other.totalSeats, totalSeats) ||
                other.totalSeats == totalSeats) &&
            (identical(other.noOfUsersRegistered, noOfUsersRegistered) ||
                other.noOfUsersRegistered == noOfUsersRegistered));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, messName, totalSeats, noOfUsersRegistered);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessImplCopyWith<_$MessImpl> get copyWith =>
      __$$MessImplCopyWithImpl<_$MessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessImplToJson(
      this,
    );
  }
}

abstract class _Mess implements Mess {
  const factory _Mess(
      {required final String messName,
      required final int totalSeats,
      final int? noOfUsersRegistered}) = _$MessImpl;

  factory _Mess.fromJson(Map<String, dynamic> json) = _$MessImpl.fromJson;

  @override
  String get messName;
  @override
  int get totalSeats;
  @override
  int? get noOfUsersRegistered;
  @override
  @JsonKey(ignore: true)
  _$$MessImplCopyWith<_$MessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
