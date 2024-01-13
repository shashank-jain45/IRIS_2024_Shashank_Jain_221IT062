import 'package:freezed_annotation/freezed_annotation.dart';
import '../menu/menu_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'mess_model.g.dart';
part 'mess_model.freezed.dart';

@freezed
abstract class Mess with _$Mess {
  @JsonSerializable(explicitToJson: true)
  const factory Mess({
    required String messName,
    required int totalSeats,
    required double messCharge,
    required Menu menuDetails,
    @Default(0) int? noOfUsersRegistered,
  }) = _Mess;
  factory Mess.fromJson(Map<String, dynamic> json) => _$MessFromJson(json);
}
