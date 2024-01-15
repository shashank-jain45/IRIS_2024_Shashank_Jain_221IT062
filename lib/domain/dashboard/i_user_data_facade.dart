import 'package:dartz/dartz.dart';
import '../core/firestore_failure.dart';
import 'user_data_model.dart';

abstract class IUserDataFacade {
  /// Fetches User Profile
  Future<Either<FirestoreFailure, UserClass>> getUserProfile();

  ///Sets User info to database
  Future<Either<FirestoreFailure, Unit>> setUserProfile(UserClass user);

  ///Fetches the list of all users who have applied for reallocation to display on the admin page
  Future<Either<FirestoreFailure, List<UserClass>>> reallocationRequestList();

  ///Updates the reallocation status of a user and to makes the repective changes to the mess database as well

  Future<Either<FirestoreFailure, Unit>> applyReallocationStatus(
      bool isApproved, UserClass user);
}
