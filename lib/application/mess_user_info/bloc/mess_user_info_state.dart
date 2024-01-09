part of 'mess_user_info_bloc.dart';

@freezed
class MessUserInfoState with _$MessUserInfoState {
  const factory MessUserInfoState({
    required List<UserClass> listOfUsers,
    required bool isFetching,
    required Option<FirestoreFailure> failure,
  }) = _messState;

  factory MessUserInfoState.initial() => MessUserInfoState(
      listOfUsers: [], isFetching: false, failure: none());
}
