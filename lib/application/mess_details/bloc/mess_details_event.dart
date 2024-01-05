part of 'mess_details_bloc.dart';

@freezed
class MessDetailsEvent with _$MessDetailsEvent {
  const factory MessDetailsEvent.fetchMessList(List<Mess> messList) =
      FetchMessList;
  const factory MessDetailsEvent.addMess(Mess mess) = AddMess;
}
