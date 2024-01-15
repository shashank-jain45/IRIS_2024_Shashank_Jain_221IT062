import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'mess_reallocation.dart';

abstract class IMessReallocationRepositoryFacade {

  /// applies for mess reallocation 
  
  Future<Either<FirestoreFailure, Unit>> applyForMessReallocation(
      MessReallocationModel messReallocationModel);
}
