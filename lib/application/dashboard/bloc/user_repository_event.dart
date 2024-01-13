part of 'user_repository_bloc.dart';

@freezed
class UserRepositoryEvent with _$UserRepositoryEvent {
  const factory UserRepositoryEvent.fetchData() = FetchUserData;
  const factory UserRepositoryEvent.setUserData(UserClass user) = SetUserData;
  const factory UserRepositoryEvent.checkInternet(
      Option<FirestoreFailure> failure) = checkConnection;
}
