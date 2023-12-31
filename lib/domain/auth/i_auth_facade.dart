import 'package:dartz/dartz.dart';
import 'package:mess_management_app/domain/auth/auth_failure.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';

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
