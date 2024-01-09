part of 'mess_user_info_bloc.dart';

@freezed
class MessUserInfoEvent with _$MessUserInfoEvent {
  const factory MessUserInfoEvent.fetchList(String messName) = FetchListOfUsers;
}
