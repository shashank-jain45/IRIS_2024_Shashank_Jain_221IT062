import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import '../dashboard/user_data_model.dart';

abstract class IMessUserInfoFacade {
  Future<Either<FirestoreFailure, List<UserClass>>> getUsersOfMess(
      String messName);
}
