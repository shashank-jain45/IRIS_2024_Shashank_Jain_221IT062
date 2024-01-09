import 'package:dartz/dartz.dart';
import 'package:mess_management_app/domain/core/firestore_failure.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';

abstract class IMessUserInfoFacade {
  Future<Either<FirestoreFailure, List<UserClass>>> getUsersOfMess(
      String messName);
}
