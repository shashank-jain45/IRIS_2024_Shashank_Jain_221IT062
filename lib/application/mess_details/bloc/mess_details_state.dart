part of 'mess_details_bloc.dart';

@freezed
class MessDetailsState with _$MessDetailsState {
  const factory MessDetailsState(
      {required List<Mess> messList,
      required bool isFetching,
      required Option<FirestoreFailure> failure}) = _messDetailsState;
  factory MessDetailsState.intial() => MessDetailsState(
        messList: [],
        isFetching: false,
        failure: none(),
      );
}
