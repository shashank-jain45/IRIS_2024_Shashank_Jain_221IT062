import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'user_data_model.dart';
import '../mess_balance/transaction_model.dart';

abstract class IUserDataFacade {
  Future<Either<FirestoreFailure, UserClass>> getUserProfile();
  Future<Either<FirestoreFailure, Unit>> setUserProfile(UserClass user);
  Future<Either<FirestoreFailure, List<Transaction>>>
      getUserTransactionHistory();
}
