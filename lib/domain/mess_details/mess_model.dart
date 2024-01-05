import 'package:freezed_annotation/freezed_annotation.dart';
part 'mess_model.g.dart';
part 'mess_model.freezed.dart';

@freezed
abstract class Mess with _$Mess {
  const factory Mess({
    required String messName,
    required int totalSeats,
    @Default(0) int? noOfUsersRegistered,
  }) = _Mess;
  factory Mess.fromJson(Map<String, dynamic> json) => _$MessFromJson(json);
}
