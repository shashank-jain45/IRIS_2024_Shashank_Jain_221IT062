import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'menu_model.dart';

abstract class IMenuFacade {
  Future<Either<FirestoreFailure, List<DayMenu>>> getMenuDetails(String messId);
}
