import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
abstract class EachMealMenu with _$EachMealMenu {
  const factory EachMealMenu({
    required String name,
    required String timings,
    required String items,
  }) = _EachMealMenu;
  factory EachMealMenu.fromJson(Map<String, dynamic> json) =>
      _$EachMealMenuFromJson(json);
}

@freezed
abstract class DayMenu with _$DayMenu {
  const factory DayMenu({
    required List<EachMealMenu> dayMenu,
    required int index,
  }) = _DayMenu;

  factory DayMenu.fromJson(Map<String, dynamic> json) =>
      _$DayMenuFromJson(json);
}
