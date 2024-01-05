// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EachMealMenu _$EachMealMenuFromJson(Map<String, dynamic> json) {
  return _EachMealMenu.fromJson(json);
}

/// @nodoc
mixin _$EachMealMenu {
  String get name => throw _privateConstructorUsedError;
  String get timings => throw _privateConstructorUsedError;
  String get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EachMealMenuCopyWith<EachMealMenu> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EachMealMenuCopyWith<$Res> {
  factory $EachMealMenuCopyWith(
          EachMealMenu value, $Res Function(EachMealMenu) then) =
      _$EachMealMenuCopyWithImpl<$Res, EachMealMenu>;
  @useResult
  $Res call({String name, String timings, String items});
}

/// @nodoc
class _$EachMealMenuCopyWithImpl<$Res, $Val extends EachMealMenu>
    implements $EachMealMenuCopyWith<$Res> {
  _$EachMealMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? timings = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EachMealMenuImplCopyWith<$Res>
    implements $EachMealMenuCopyWith<$Res> {
  factory _$$EachMealMenuImplCopyWith(
          _$EachMealMenuImpl value, $Res Function(_$EachMealMenuImpl) then) =
      __$$EachMealMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String timings, String items});
}

/// @nodoc
class __$$EachMealMenuImplCopyWithImpl<$Res>
    extends _$EachMealMenuCopyWithImpl<$Res, _$EachMealMenuImpl>
    implements _$$EachMealMenuImplCopyWith<$Res> {
  __$$EachMealMenuImplCopyWithImpl(
      _$EachMealMenuImpl _value, $Res Function(_$EachMealMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? timings = null,
    Object? items = null,
  }) {
    return _then(_$EachMealMenuImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      timings: null == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EachMealMenuImpl implements _EachMealMenu {
  const _$EachMealMenuImpl(
      {required this.name, required this.timings, required this.items});

  factory _$EachMealMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$EachMealMenuImplFromJson(json);

  @override
  final String name;
  @override
  final String timings;
  @override
  final String items;

  @override
  String toString() {
    return 'EachMealMenu(name: $name, timings: $timings, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EachMealMenuImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, timings, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EachMealMenuImplCopyWith<_$EachMealMenuImpl> get copyWith =>
      __$$EachMealMenuImplCopyWithImpl<_$EachMealMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EachMealMenuImplToJson(
      this,
    );
  }
}

abstract class _EachMealMenu implements EachMealMenu {
  const factory _EachMealMenu(
      {required final String name,
      required final String timings,
      required final String items}) = _$EachMealMenuImpl;

  factory _EachMealMenu.fromJson(Map<String, dynamic> json) =
      _$EachMealMenuImpl.fromJson;

  @override
  String get name;
  @override
  String get timings;
  @override
  String get items;
  @override
  @JsonKey(ignore: true)
  _$$EachMealMenuImplCopyWith<_$EachMealMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayMenu _$DayMenuFromJson(Map<String, dynamic> json) {
  return _DayMenu.fromJson(json);
}

/// @nodoc
mixin _$DayMenu {
  List<EachMealMenu> get dayMenu => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayMenuCopyWith<DayMenu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayMenuCopyWith<$Res> {
  factory $DayMenuCopyWith(DayMenu value, $Res Function(DayMenu) then) =
      _$DayMenuCopyWithImpl<$Res, DayMenu>;
  @useResult
  $Res call({List<EachMealMenu> dayMenu, int index});
}

/// @nodoc
class _$DayMenuCopyWithImpl<$Res, $Val extends DayMenu>
    implements $DayMenuCopyWith<$Res> {
  _$DayMenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayMenu = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      dayMenu: null == dayMenu
          ? _value.dayMenu
          : dayMenu // ignore: cast_nullable_to_non_nullable
              as List<EachMealMenu>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayMenuImplCopyWith<$Res> implements $DayMenuCopyWith<$Res> {
  factory _$$DayMenuImplCopyWith(
          _$DayMenuImpl value, $Res Function(_$DayMenuImpl) then) =
      __$$DayMenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EachMealMenu> dayMenu, int index});
}

/// @nodoc
class __$$DayMenuImplCopyWithImpl<$Res>
    extends _$DayMenuCopyWithImpl<$Res, _$DayMenuImpl>
    implements _$$DayMenuImplCopyWith<$Res> {
  __$$DayMenuImplCopyWithImpl(
      _$DayMenuImpl _value, $Res Function(_$DayMenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayMenu = null,
    Object? index = null,
  }) {
    return _then(_$DayMenuImpl(
      dayMenu: null == dayMenu
          ? _value._dayMenu
          : dayMenu // ignore: cast_nullable_to_non_nullable
              as List<EachMealMenu>,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayMenuImpl implements _DayMenu {
  const _$DayMenuImpl(
      {required final List<EachMealMenu> dayMenu, required this.index})
      : _dayMenu = dayMenu;

  factory _$DayMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayMenuImplFromJson(json);

  final List<EachMealMenu> _dayMenu;
  @override
  List<EachMealMenu> get dayMenu {
    if (_dayMenu is EqualUnmodifiableListView) return _dayMenu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dayMenu);
  }

  @override
  final int index;

  @override
  String toString() {
    return 'DayMenu(dayMenu: $dayMenu, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayMenuImpl &&
            const DeepCollectionEquality().equals(other._dayMenu, _dayMenu) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_dayMenu), index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayMenuImplCopyWith<_$DayMenuImpl> get copyWith =>
      __$$DayMenuImplCopyWithImpl<_$DayMenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DayMenuImplToJson(
      this,
    );
  }
}

abstract class _DayMenu implements DayMenu {
  const factory _DayMenu(
      {required final List<EachMealMenu> dayMenu,
      required final int index}) = _$DayMenuImpl;

  factory _DayMenu.fromJson(Map<String, dynamic> json) = _$DayMenuImpl.fromJson;

  @override
  List<EachMealMenu> get dayMenu;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$DayMenuImplCopyWith<_$DayMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
