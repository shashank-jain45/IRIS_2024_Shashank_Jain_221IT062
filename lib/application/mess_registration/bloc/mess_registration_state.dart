part of 'mess_registration_bloc.dart';

@freezed
class MessRegistrationState with _$MessRegistrationState {
  const factory MessRegistrationState({
    required bool isFetching,
    required Either<Option<FirestoreFailure>, Unit> failure,
  }) = _MessRegistrationState;

  factory MessRegistrationState.initial() =>
      MessRegistrationState(isFetching: false, failure: left(none()));
}
