import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'mess_model.dart';

abstract class IMessDetailsRepositoryFacade {
  Stream<List<Mess>> fetchMessDetails();
  Future<Either<FirestoreFailure, Unit>> addMess(Mess mess);
  Future<Either<FirestoreFailure, Unit>> deleteMess(String messName);
}
