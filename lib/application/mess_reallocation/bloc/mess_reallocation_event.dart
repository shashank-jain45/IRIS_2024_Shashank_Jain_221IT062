part of 'mess_reallocation_bloc.dart';

@freezed
class MessReallocationEvent with _$MessReallocationEvent {
  const factory MessReallocationEvent.apply(
      MessReallocationModel messReallocationModel) = ApplyForMessReallocation;
}
