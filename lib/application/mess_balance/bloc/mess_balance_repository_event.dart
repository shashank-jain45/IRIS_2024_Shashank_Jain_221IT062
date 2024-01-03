part of 'mess_balance_repository_bloc.dart';

@freezed
class MessBalanceRepositoryEvent with _$MessBalanceRepositoryEvent {
  const factory MessBalanceRepositoryEvent.addMessBalance(Transaction tran) =
      AddMessBalance;
  const factory MessBalanceRepositoryEvent.fetchTransactions(
      List<Transaction> trans) = FetchTransactions;
      
}
