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

Menu _$MenuFromJson(Map<String, dynamic> json) {
  return _Menu.fromJson(json);
}

/// @nodoc
mixin _$Menu {
  Map<String, dynamic> get menu => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenuCopyWith<Menu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuCopyWith<$Res> {
  factory $MenuCopyWith(Menu value, $Res Function(Menu) then) =
      _$MenuCopyWithImpl<$Res, Menu>;
  @useResult
  $Res call({Map<String, dynamic> menu});
}

/// @nodoc
class _$MenuCopyWithImpl<$Res, $Val extends Menu>
    implements $MenuCopyWith<$Res> {
  _$MenuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = null,
  }) {
    return _then(_value.copyWith(
      menu: null == menu
          ? _value.menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MenuImplCopyWith<$Res> implements $MenuCopyWith<$Res> {
  factory _$$MenuImplCopyWith(
          _$MenuImpl value, $Res Function(_$MenuImpl) then) =
      __$$MenuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, dynamic> menu});
}

/// @nodoc
class __$$MenuImplCopyWithImpl<$Res>
    extends _$MenuCopyWithImpl<$Res, _$MenuImpl>
    implements _$$MenuImplCopyWith<$Res> {
  __$$MenuImplCopyWithImpl(_$MenuImpl _value, $Res Function(_$MenuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? menu = null,
  }) {
    return _then(_$MenuImpl(
      menu: null == menu
          ? _value._menu
          : menu // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuImpl implements _Menu {
  const _$MenuImpl({required final Map<String, dynamic> menu}) : _menu = menu;

  factory _$MenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuImplFromJson(json);

  final Map<String, dynamic> _menu;
  @override
  Map<String, dynamic> get menu {
    if (_menu is EqualUnmodifiableMapView) return _menu;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_menu);
  }

  @override
  String toString() {
    return 'Menu(menu: $menu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuImpl &&
            const DeepCollectionEquality().equals(other._menu, _menu));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_menu));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuImplCopyWith<_$MenuImpl> get copyWith =>
      __$$MenuImplCopyWithImpl<_$MenuImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuImplToJson(
      this,
    );
  }
}

abstract class _Menu implements Menu {
  const factory _Menu({required final Map<String, dynamic> menu}) = _$MenuImpl;

  factory _Menu.fromJson(Map<String, dynamic> json) = _$MenuImpl.fromJson;

  @override
  Map<String, dynamic> get menu;
  @override
  @JsonKey(ignore: true)
  _$$MenuImplCopyWith<_$MenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DayMenu _$DayMenuFromJson(Map<String, dynamic> json) {
  return _DayMenu.fromJson(json);
}

/// @nodoc
mixin _$DayMenu {
  List<String> get items => throw _privateConstructorUsedError;
  List<String> get time => throw _privateConstructorUsedError;
  List<String> get mealName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DayMenuCopyWith<DayMenu> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayMenuCopyWith<$Res> {
  factory $DayMenuCopyWith(DayMenu value, $Res Function(DayMenu) then) =
      _$DayMenuCopyWithImpl<$Res, DayMenu>;
  @useResult
  $Res call({List<String> items, List<String> time, List<String> mealName});
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
    Object? items = null,
    Object? time = null,
    Object? mealName = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mealName: null == mealName
          ? _value.mealName
          : mealName // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({List<String> items, List<String> time, List<String> mealName});
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
    Object? items = null,
    Object? time = null,
    Object? mealName = null,
  }) {
    return _then(_$DayMenuImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      mealName: null == mealName
          ? _value._mealName
          : mealName // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DayMenuImpl implements _DayMenu {
  const _$DayMenuImpl(
      {required final List<String> items,
      required final List<String> time,
      required final List<String> mealName})
      : _items = items,
        _time = time,
        _mealName = mealName;

  factory _$DayMenuImpl.fromJson(Map<String, dynamic> json) =>
      _$$DayMenuImplFromJson(json);

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<String> _mealName;
  @override
  List<String> get mealName {
    if (_mealName is EqualUnmodifiableListView) return _mealName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mealName);
  }

  @override
  String toString() {
    return 'DayMenu(items: $items, time: $time, mealName: $mealName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayMenuImpl &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality().equals(other._mealName, _mealName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_mealName));

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
      {required final List<String> items,
      required final List<String> time,
      required final List<String> mealName}) = _$DayMenuImpl;

  factory _DayMenu.fromJson(Map<String, dynamic> json) = _$DayMenuImpl.fromJson;

  @override
  List<String> get items;
  @override
  List<String> get time;
  @override
  List<String> get mealName;
  @override
  @JsonKey(ignore: true)
  _$$DayMenuImplCopyWith<_$DayMenuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
