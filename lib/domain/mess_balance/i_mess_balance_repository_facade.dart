import 'package:dartz/dartz.dart';

import '../core/firestore_failure.dart';
import 'transaction_model.dart';

abstract class IMessBalanceRepositoryFacade {
  /// top-up mess balance
  Future<Either<FirestoreFailure, Transaction>> addMessAmount(
      Transaction trans);

  ///Return a stream of transactions 

  Stream<List<Transaction>> transactionDetails();
}
