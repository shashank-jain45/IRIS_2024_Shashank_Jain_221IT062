part of 'mess_balance_repository_bloc.dart';

@freezed
class MessBalanceRepositoryState with _$MessBalanceRepositoryState {
  const factory MessBalanceRepositoryState(
          {required List<Transaction> trans,
          required bool isFetching,
          required double messBalance,
          required Option<FirestoreFailure> failureOrSuccess}) =
      MessBalanceRepository;

  factory MessBalanceRepositoryState.initial() =>
      const MessBalanceRepositoryState(
          trans: [],
          isFetching: false,
          messBalance: 0,
          failureOrSuccess: None());
}
