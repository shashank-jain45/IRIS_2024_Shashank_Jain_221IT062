import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'mess_model.dart';

abstract class IMessDetailsRepositoryFacade {
  ///Returns a stream of mess  added in the database
  Stream<List<Mess>> fetchMessDetails();

  ///Adds a new mess

  Future<Either<FirestoreFailure, Unit>> addMess(Mess mess);

  ///Deletes a mess

  Future<Either<FirestoreFailure, Unit>> deleteMess(String messName);
}
