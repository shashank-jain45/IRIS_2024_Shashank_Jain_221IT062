import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';

abstract class IMessRegistrationRepositoryFacade {
  Future<Either<FirestoreFailure, Unit>> applyFormMessRegistration(
      String messName);
}
