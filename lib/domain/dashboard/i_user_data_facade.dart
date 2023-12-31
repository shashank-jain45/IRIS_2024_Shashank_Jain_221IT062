import 'package:dartz/dartz.dart';
import 'package:mess_management_app/domain/core/firestore_failure.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';
import 'package:mess_management_app/domain/mess_balance/transaction_model.dart';

abstract class IUserDataFacade {
  Future<Either<FirestoreFailure, UserClass>> getUserProfile();
  Future<Either<FirestoreFailure, Unit>> setUserProfile(UserClass user);
  Future<Either<FirestoreFailure, List<Transaction>>>
      getUserTransactionHistory();
}
