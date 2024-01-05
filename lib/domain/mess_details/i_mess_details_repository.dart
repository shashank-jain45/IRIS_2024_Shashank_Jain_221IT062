import 'package:dartz/dartz.dart';
import 'package:mess_management_app/domain/core/firestore_failure.dart';
import 'package:mess_management_app/domain/mess_details/mess_model.dart';

abstract class IMessDetailsRepositoryFacade {
  Stream<List<Mess>> fetchMessDetails();
  Future<Either<FirestoreFailure, Unit>> addMess(Mess mess);
}
