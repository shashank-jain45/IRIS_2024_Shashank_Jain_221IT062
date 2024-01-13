import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'transaction_model.dart';

abstract class IMessBalanceRepositoryFacade {
  Future<Either<FirestoreFailure, Transaction>> addMessAmount(
      Transaction trans);
   Stream<List<Transaction>> transactionDetails();
  Future<Either<FirestoreFailure, Unit>> deductMealAmount(Transaction trans);
}
