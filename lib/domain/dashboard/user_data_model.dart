import 'package:freezed_annotation/freezed_annotation.dart';
part 'user_data_model.freezed.dart';
part 'user_data_model.g.dart';

@freezed
abstract class UserClass with _$UserClass {
  const factory UserClass({
    required String name,
    required String rollNumber,
    required String email,
    @Default("N/A") String messName,
    @Default(0) double messBalance,
  }) = _UserClass;
  factory UserClass.fromJson(Map<String, dynamic> json) =>
      _$UserClassFromJson(json);
}