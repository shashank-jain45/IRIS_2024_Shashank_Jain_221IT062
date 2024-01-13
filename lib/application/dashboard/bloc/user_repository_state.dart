part of 'user_repository_bloc.dart';

@freezed
class UserRepositoryState with _$UserRepositoryState {
  const factory UserRepositoryState({
    required UserClass? user,
    required bool isFetching,
    required Option<FirestoreFailure> failureOrSuccess,
    required Either<Option<FirestoreFailure>,Unit> internetConnection,
  }) = _userRepository;
  factory UserRepositoryState.intial() => UserRepositoryState(
        failureOrSuccess: none(),
        isFetching: true,
        user: null,
        internetConnection: right(unit),
      );
}
