// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserClass _$UserClassFromJson(Map<String, dynamic> json) {
  return _UserClass.fromJson(json);
}

/// @nodoc
mixin _$UserClass {
  String get name => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String get rollNumber => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get messName => throw _privateConstructorUsedError;
  double get messBalance => throw _privateConstructorUsedError;
  MessReallocationModel? get messReallocationModel =>
      throw _privateConstructorUsedError;
  bool? get isAdmin => throw _privateConstructorUsedError;
  double get messCharge => throw _privateConstructorUsedError;
  Menu? get menu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserClassCopyWith<UserClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserClassCopyWith<$Res> {
  factory $UserClassCopyWith(UserClass value, $Res Function(UserClass) then) =
      _$UserClassCopyWithImpl<$Res, UserClass>;
  @useResult
  $Res call(
      {String name,
      String? id,
      String rollNumber,
      String email,
      String messName,
      double messBalance,
      MessReallocationModel? messReallocationModel,
      bool? isAdmin,
      double messCharge,
      Menu? menu});

  $MessReallocationModelCopyWith<$Res>? get messReallocationModel;
  $MenuCopyWith<$Res>? get menu;
}

/// @nodoc
class _$UserClassCopyWithImpl<$Res, $Val extends UserClass>
    implements $UserClassCopyWith<$Res> {
  _$UserClassCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
    Object? rollNumber = null,
    Object? email = null,
    Object? messName = null,
    Object? messBalance = null,
    Object? messReallocationModel = freezed,
    Object? isAdmin = freezed,
    Object? messCharge = null,
    Object? menu = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rollNumber: null == rollNumber
          ? _value.rollNumber
          : rollNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      messName: null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
      messBalance: null == messBalance
          ? _value.messBalance
          : messBalance // ignore: cast_nullable_to_non_nullable
              as double,
      messReallocationModel: freezed == messReallocationModel
          ? _value.messReallocationModel
          : messReallocationModel // ignore: cast_nullable_to_non_nullable
              as MessReallocationModel?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      messCharge: null == messCharge
          ? _value.messCharge
          : messCharge // ignore: cast_nullable_to_non_nullable
              as double,
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessReallocationModelCopyWith<$Res>? get messReallocationModel {
    if (_value.messReallocationModel == null) {
      return null;
    }

    return $MessReallocationModelCopyWith<$Res>(_value.messReallocationModel!,
        (value) {
      return _then(_value.copyWith(messReallocationModel: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MenuCopyWith<$Res>? get menu {
    if (_value.menu == null) {
      return null;
    }

    return $MenuCopyWith<$Res>(_value.menu!, (value) {
      return _then(_value.copyWith(menu: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserClassImplCopyWith<$Res>
    implements $UserClassCopyWith<$Res> {
  factory _$$UserClassImplCopyWith(
          _$UserClassImpl value, $Res Function(_$UserClassImpl) then) =
      __$$UserClassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? id,
      String rollNumber,
      String email,
      String messName,
      double messBalance,
      MessReallocationModel? messReallocationModel,
      bool? isAdmin,
      double messCharge,
      Menu? menu});

  @override
  $MessReallocationModelCopyWith<$Res>? get messReallocationModel;
  @override
  $MenuCopyWith<$Res>? get menu;
}

/// @nodoc
class __$$UserClassImplCopyWithImpl<$Res>
    extends _$UserClassCopyWithImpl<$Res, _$UserClassImpl>
    implements _$$UserClassImplCopyWith<$Res> {
  __$$UserClassImplCopyWithImpl(
      _$UserClassImpl _value, $Res Function(_$UserClassImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = freezed,
    Object? rollNumber = null,
    Object? email = null,
    Object? messName = null,
    Object? messBalance = null,
    Object? messReallocationModel = freezed,
    Object? isAdmin = freezed,
    Object? messCharge = null,
    Object? menu = freezed,
  }) {
    return _then(_$UserClassImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      rollNumber: null == rollNumber
          ? _value.rollNumber
          : rollNumber // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      messName: null == messName
          ? _value.messName
          : messName // ignore: cast_nullable_to_non_nullable
              as String,
      messBalance: null == messBalance
          ? _value.messBalance
          : messBalance // ignore: cast_nullable_to_non_nullable
              as double,
      messReallocationModel: freezed == messReallocationModel
          ? _value.messReallocationModel
          : messReallocationModel // ignore: cast_nullable_to_non_nullable
              as MessReallocationModel?,
      isAdmin: freezed == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      messCharge: null == messCharge
          ? _value.messCharge
          : messCharge // ignore: cast_nullable_to_non_nullable
              as double,
      menu: freezed == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserClassImpl implements _UserClass {
  const _$UserClassImpl(
      {required this.name,
      this.id,
      required this.rollNumber,
      required this.email,
      this.messName = "N/A",
      this.messBalance = 0,
      this.messReallocationModel,
      this.isAdmin = false,
      this.messCharge = 0,
      this.menu});

  factory _$UserClassImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserClassImplFromJson(json);

  @override
  final String name;
  @override
  final String? id;
  @override
  final String rollNumber;
  @override
  final String email;
  @override
  @JsonKey()
  final String messName;
  @override
  @JsonKey()
  final double messBalance;
  @override
  final MessReallocationModel? messReallocationModel;
  @override
  @JsonKey()
  final bool? isAdmin;
  @override
  @JsonKey()
  final double messCharge;
  @override
  final Menu? menu;

  @override
  String toString() {
    return 'UserClass(name: $name, id: $id, rollNumber: $rollNumber, email: $email, messName: $messName, messBalance: $messBalance, messReallocationModel: $messReallocationModel, isAdmin: $isAdmin, messCharge: $messCharge, menu: $menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserClassImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rollNumber, rollNumber) ||
                other.rollNumber == rollNumber) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.messName, messName) ||
                other.messName == messName) &&
            (identical(other.messBalance, messBalance) ||
                other.messBalance == messBalance) &&
            (identical(other.messReallocationModel, messReallocationModel) ||
                other.messReallocationModel == messReallocationModel) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin) &&
            (identical(other.messCharge, messCharge) ||
                other.messCharge == messCharge) &&
            (identical(other.menu, menu) || other.menu == menu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, rollNumber, email,
      messName, messBalance, messReallocationModel, isAdmin, messCharge, menu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserClassImplCopyWith<_$UserClassImpl> get copyWith =>
      __$$UserClassImplCopyWithImpl<_$UserClassImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserClassImplToJson(
      this,
    );
  }
}

abstract class _UserClass implements UserClass {
  const factory _UserClass(
      {required final String name,
      final String? id,
      required final String rollNumber,
      required final String email,
      final String messName,
      final double messBalance,
      final MessReallocationModel? messReallocationModel,
      final bool? isAdmin,
      final double messCharge,
      final Menu? menu}) = _$UserClassImpl;

  factory _UserClass.fromJson(Map<String, dynamic> json) =
      _$UserClassImpl.fromJson;

  @override
  String get name;
  @override
  String? get id;
  @override
  String get rollNumber;
  @override
  String get email;
  @override
  String get messName;
  @override
  double get messBalance;
  @override
  MessReallocationModel? get messReallocationModel;
  @override
  bool? get isAdmin;
  @override
  double get messCharge;
  @override
  Menu? get menu;
  @override
  @JsonKey(ignore: true)
  _$$UserClassImplCopyWith<_$UserClassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
