part of 'mess_reallocation_request_bloc.dart';

@freezed
class MessReallocationRequestEvent with _$MessReallocationRequestEvent {
  const factory MessReallocationRequestEvent.fetch() = Fetch;
  const factory MessReallocationRequestEvent.updateStatus(bool isApproved,UserClass user) =
      UpdateStatus;
}
