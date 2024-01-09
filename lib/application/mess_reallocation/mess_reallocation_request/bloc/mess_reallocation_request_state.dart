part of 'mess_reallocation_request_bloc.dart';

@freezed
class MessReallocationRequestState with _$MessReallocationRequestState {
  const factory MessReallocationRequestState({
    required Option<List<UserClass>> requests,
    required bool isFetching,
    required bool isSubmitting,
    required Option<FirestoreFailure> failure,
    required Option<bool> isApproved,
  }) = _messReallocationRequest;

  factory MessReallocationRequestState.initial() =>
      MessReallocationRequestState(
          requests: none(),
          isFetching: false,
          failure: none(),
          isApproved: none(),
          isSubmitting: false);
}
