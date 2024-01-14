// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mess_reallocation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessReallocationModel _$MessReallocationModelFromJson(
    Map<String, dynamic> json) {
  return _MessReallocationModel.fromJson(json);
}

/// @nodoc
mixin _$MessReallocationModel {
  @HiveField(0)
  bool? get isPending => throw _privateConstructorUsedError;
  @HiveField(1)
  bool? get isApproved => throw _privateConstructorUsedError;
  @HiveField(2)
  String get requestedMess => throw _privateConstructorUsedError;
  @HiveField(3)
  DateTime get date => throw _privateConstructorUsedError;
  @HiveField(4)
  double get messCharge => throw _privateConstructorUsedError;
  @HiveField(5)
  Menu get menu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessReallocationModelCopyWith<MessReallocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessReallocationModelCopyWith<$Res> {
  factory $MessReallocationModelCopyWith(MessReallocationModel value,
          $Res Function(MessReallocationModel) then) =
      _$MessReallocationModelCopyWithImpl<$Res, MessReallocationModel>;
  @useResult
  $Res call(
      {@HiveField(0) bool? isPending,
      @HiveField(1) bool? isApproved,
      @HiveField(2) String requestedMess,
      @HiveField(3) DateTime date,
      @HiveField(4) double messCharge,
      @HiveField(5) Menu menu});

  $MenuCopyWith<$Res> get menu;
}

/// @nodoc
class _$MessReallocationModelCopyWithImpl<$Res,
        $Val extends MessReallocationModel>
    implements $MessReallocationModelCopyWith<$Res> {
  _$MessReallocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPending = freezed,
    Object? isApproved = freezed,
    Object? requestedMess = null,
    Object? date = null,
    Object? messCharge = null,
    Object? menu = null,
  }) {
    return _then(_value.copyWith(
      isPending: freezed == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestedMess: null == requestedMess
          ? _value.requestedMess
          : requestedMess // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
abstract class _$$MessReallocationModelImplCopyWith<$Res>
    implements $MessReallocationModelCopyWith<$Res> {
  factory _$$MessReallocationModelImplCopyWith(
          _$MessReallocationModelImpl value,
          $Res Function(_$MessReallocationModelImpl) then) =
      __$$MessReallocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) bool? isPending,
      @HiveField(1) bool? isApproved,
      @HiveField(2) String requestedMess,
      @HiveField(3) DateTime date,
      @HiveField(4) double messCharge,
      @HiveField(5) Menu menu});

  @override
  $MenuCopyWith<$Res> get menu;
}

/// @nodoc
class __$$MessReallocationModelImplCopyWithImpl<$Res>
    extends _$MessReallocationModelCopyWithImpl<$Res,
        _$MessReallocationModelImpl>
    implements _$$MessReallocationModelImplCopyWith<$Res> {
  __$$MessReallocationModelImplCopyWithImpl(_$MessReallocationModelImpl _value,
      $Res Function(_$MessReallocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPending = freezed,
    Object? isApproved = freezed,
    Object? requestedMess = null,
    Object? date = null,
    Object? messCharge = null,
    Object? menu = null,
  }) {
    return _then(_$MessReallocationModelImpl(
      isPending: freezed == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool?,
      isApproved: freezed == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool?,
      requestedMess: null == requestedMess
          ? _value.requestedMess
          : requestedMess // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      messCharge: null == messCharge
          ? _value.messCharge
          : messCharge // ignore: cast_nullable_to_non_nullable
              as double,
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Menu,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
@HiveType(typeId: 6, adapterName: "notif")
class _$MessReallocationModelImpl implements _MessReallocationModel {
  const _$MessReallocationModelImpl(
      {@HiveField(0) this.isPending = true,
      @HiveField(1) this.isApproved = false,
      @HiveField(2) required this.requestedMess,
      @HiveField(3) required this.date,
      @HiveField(4) required this.messCharge,
      @HiveField(5) required this.menu});

  factory _$MessReallocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessReallocationModelImplFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final bool? isPending;
  @override
  @JsonKey()
  @HiveField(1)
  final bool? isApproved;
  @override
  @HiveField(2)
  final String requestedMess;
  @override
  @HiveField(3)
  final DateTime date;
  @override
  @HiveField(4)
  final double messCharge;
  @override
  @HiveField(5)
  final Menu menu;

  @override
  String toString() {
    return 'MessReallocationModel(isPending: $isPending, isApproved: $isApproved, requestedMess: $requestedMess, date: $date, messCharge: $messCharge, menu: $menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessReallocationModelImpl &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending) &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved) &&
            (identical(other.requestedMess, requestedMess) ||
                other.requestedMess == requestedMess) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.messCharge, messCharge) ||
                other.messCharge == messCharge) &&
            (identical(other.menu, menu) || other.menu == menu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPending, isApproved,
      requestedMess, date, messCharge, menu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MessReallocationModelImplCopyWith<_$MessReallocationModelImpl>
      get copyWith => __$$MessReallocationModelImplCopyWithImpl<
          _$MessReallocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessReallocationModelImplToJson(
      this,
    );
  }
}

abstract class _MessReallocationModel implements MessReallocationModel {
  const factory _MessReallocationModel(
      {@HiveField(0) final bool? isPending,
      @HiveField(1) final bool? isApproved,
      @HiveField(2) required final String requestedMess,
      @HiveField(3) required final DateTime date,
      @HiveField(4) required final double messCharge,
      @HiveField(5) required final Menu menu}) = _$MessReallocationModelImpl;

  factory _MessReallocationModel.fromJson(Map<String, dynamic> json) =
      _$MessReallocationModelImpl.fromJson;

  @override
  @HiveField(0)
  bool? get isPending;
  @override
  @HiveField(1)
  bool? get isApproved;
  @override
  @HiveField(2)
  String get requestedMess;
  @override
  @HiveField(3)
  DateTime get date;
  @override
  @HiveField(4)
  double get messCharge;
  @override
  @HiveField(5)
  Menu get menu;
  @override
  @JsonKey(ignore: true)
  _$$MessReallocationModelImplCopyWith<_$MessReallocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
