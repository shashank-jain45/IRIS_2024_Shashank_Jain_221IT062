import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import '../dashboard/user_data_model.dart';

abstract class IMessUserInfoFacade {
  ///Returns a List of users registered to a mess
  Future<Either<FirestoreFailure, List<UserClass>>> getUsersOfMess(
      String messName);
}
