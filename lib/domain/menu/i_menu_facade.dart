import 'package:dartz/dartz.dart';

import '../core/firestore_failure.dart';
import 'menu_model.dart';

abstract class IMenuFacade {
  // Retrieves menu details of a mess by taking messId as a argument
  Future<Either<FirestoreFailure, Menu>> getMenuDetails(String messId);
}
