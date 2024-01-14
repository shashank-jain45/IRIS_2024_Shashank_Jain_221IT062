import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import '../menu/menu_model.dart';
part 'mess_reallocation.freezed.dart';
part 'mess_reallocation.g.dart';

@freezed
abstract class MessReallocationModel with _$MessReallocationModel {
  @JsonSerializable(explicitToJson: true)
  @HiveType(typeId: 6, adapterName: "notif")
  const factory MessReallocationModel({
    @HiveField(0) @Default(true) bool? isPending,
    @HiveField(1) @Default(false) bool? isApproved,
    @HiveField(2) required String requestedMess,
    @HiveField(3) required DateTime date,
    @HiveField(4) required double messCharge,
    @HiveField(5) required Menu menu,
  }) = _MessReallocationModel;

  factory MessReallocationModel.fromJson(Map<String, dynamic> json) =>
      _$MessReallocationModelFromJson(json);
}
