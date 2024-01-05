import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'mess_reallocation.dart';

abstract class IMessReallocationRepositoryFacade {
  Future<Either<FirestoreFailure, Unit>> applyForMessReallocation(
      MessReallocationModel messReallocationModel);
}
