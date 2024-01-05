import 'package:dartz/dartz.dart';
import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Option<Unit>> getSignedInUser();
  Future<void> signOut();
}
