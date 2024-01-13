import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../menu/menu_model.dart';
part 'mess_reallocation.freezed.dart';
part 'mess_reallocation.g.dart';

@freezed
abstract class MessReallocationModel with _$MessReallocationModel {
  @JsonSerializable(explicitToJson: true)
  const factory MessReallocationModel(
      {@Default(true) bool? isPending,
      @Default(false) bool? isApproved,
      required String requestedMess,
      required DateTime date,
      required double messCharge,
      required Menu menu}) = _MessReallocationModel;

  factory MessReallocationModel.fromJson(Map<String, dynamic> json) =>
      _$MessReallocationModelFromJson(json);
}
