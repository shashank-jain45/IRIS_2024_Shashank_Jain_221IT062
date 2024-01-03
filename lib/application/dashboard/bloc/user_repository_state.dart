part of 'user_repository_bloc.dart';

@freezed
class UserRepositoryState with _$UserRepositoryState {
  const factory UserRepositoryState({
    required UserClass? user,
    required Option<List<Transaction>> transactions,
    required bool isFetching,
    required Option<FirestoreFailure> failureOrSuccess,
  }) = _userRepository;
  factory UserRepositoryState.intial() => UserRepositoryState(
        transactions: none(),
        failureOrSuccess: none(),
        isFetching: true,
        user: null,
      );
}
