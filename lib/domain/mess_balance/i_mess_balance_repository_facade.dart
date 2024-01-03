import 'package:dartz/dartz.dart';
import 'package:mess_management_app/domain/core/firestore_failure.dart';
import 'package:mess_management_app/domain/mess_balance/transaction_model.dart';

abstract class IMessBalanceRepository {
  Future<Either<FirestoreFailure, Transaction>> addMessAmount(
      Transaction trans);
   Stream<List<Transaction>> transactionDetails();
  Future<Either<FirestoreFailure, Unit>> deductMealAmount();
}
