import 'package:freezed_annotation/freezed_annotation.dart';
part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
abstract class Menu with _$Menu {
  const factory Menu({required Map<String, dynamic> menu}) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}

@freezed
abstract class DayMenu with _$DayMenu {
  const factory DayMenu({
    required List<String> items,
    required List<String> time,
    required List<String> mealName,
  }) = _DayMenu;
  factory DayMenu.fromJson(Map<String, dynamic> json) =>
      _$DayMenuFromJson(json);
}
