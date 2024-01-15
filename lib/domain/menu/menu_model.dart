import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed

///Menu data class
abstract class Menu with _$Menu {
  @HiveType(typeId: 1, adapterName: "men")
  const factory Menu({
    @HiveField(0) required String breakfast,
    @HiveField(1) required String lunch,
    @HiveField(2) required String snacks,
    @HiveField(3) required String dinner,
  }) = _Menu;

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);
}
