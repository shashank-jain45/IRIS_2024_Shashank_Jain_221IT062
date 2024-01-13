import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import '../menu/menu_model.dart';

abstract class IMessRegistrationRepositoryFacade {
  Future<Either<FirestoreFailure, Unit>> applyFormMessRegistration(
      String messName,String? userId,String? oldMess,double messCharge,
      Menu menu);
}
