import 'package:freezed_annotation/freezed_annotation.dart';
part 'mess_reallocation.freezed.dart';
part 'mess_reallocation.g.dart';

@freezed
abstract class MessReallocationModel with _$MessReallocationModel {
  const factory MessReallocationModel({
    @Default(true) bool? isPending,
    @Default(false) bool? isApproved,
    required String requestedMess,
    required DateTime date,
  }) = _MessReallocationModel;
  factory MessReallocationModel.fromJson(Map<String, dynamic> json) =>
      _$MessReallocationModelFromJson(json);
}
