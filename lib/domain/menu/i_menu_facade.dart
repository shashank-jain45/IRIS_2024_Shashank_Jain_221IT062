import 'package:dartz/dartz.dart';
import 'package:mess_management_app/domain/core/firestore_failure.dart';

abstract class IMenuFacade {
  Future<Either<FirestoreFailure, Unit>> getMenuDetails(String messId);
}
