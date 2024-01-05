part of 'mess_reallocation_bloc.dart';

@freezed
class MessReallocationState with _$MessReallocationState {
  const factory MessReallocationState({
    required bool isFetching,
    required  Either<Option<FirestoreFailure>,Unit> failure,

  }) = _messReallocationState;
  factory MessReallocationState.initial() => MessReallocationState(
        isFetching: false,
        failure: left(none()),
      );
}
