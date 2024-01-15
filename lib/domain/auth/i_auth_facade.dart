import 'package:dartz/dartz.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  ///Register user on the app
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  ///Log's in the user to the  app

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  ///Checks whether the user is authenticated or not

  Future<Option<Unit>> getSignedInUser();

  /// Triggers sign out
  Future<void> signOut();
}
