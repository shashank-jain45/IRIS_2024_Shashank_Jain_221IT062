part of 'user_repository_bloc.dart';

@freezed
class UserRepositoryEvent with _$UserRepositoryEvent {
  const factory UserRepositoryEvent.fetchData() = FetchUserData;
  const factory UserRepositoryEvent.transactionData() = FetchTransactionData;
  const factory UserRepositoryEvent.setUserData(UserClass user) = SetUserData;
}
