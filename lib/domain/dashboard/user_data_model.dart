import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import '../menu/menu_model.dart';
import '../mess_reallocation/mess_reallocation.dart';
part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
abstract class UserClass with _$UserClass {
  @JsonSerializable(
    explicitToJson: true,
  )
  const factory UserClass({
    required String name,
    String? id,
    required String rollNumber,
    required String email,
    @Default("N/A") String messName,
    @Default(0) double messBalance,
    MessReallocationModel? messReallocationModel,
    @Default(false) bool? isAdmin,
    @Default(0) double messCharge,
    Menu? menu,
  }) = _UserClass;
  factory UserClass.fromJson(Map<String, dynamic> json) =>
      _$UserClassFromJson(json);
}
