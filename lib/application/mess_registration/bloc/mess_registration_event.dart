part of 'mess_registration_bloc.dart';

@freezed
class MessRegistrationEvent with _$MessRegistrationEvent {
  const factory MessRegistrationEvent.apply(String messName, String? userId) =
      MessRegistrationEventApply;
}
