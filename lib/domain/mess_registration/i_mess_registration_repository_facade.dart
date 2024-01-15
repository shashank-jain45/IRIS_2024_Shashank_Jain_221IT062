import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import '../menu/menu_model.dart';

abstract class IMessRegistrationRepositoryFacade {
  ///Registers a new user on a mess and also allow's admin to reallocate any user to any other mess when [userId] is not null
  Future<Either<FirestoreFailure, Unit>> applyFormMessRegistration(
      String messName,
      String? userId,
      String? oldMess,
      double messCharge,
      Menu menu);
}
