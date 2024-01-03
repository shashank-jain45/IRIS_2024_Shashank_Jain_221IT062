import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mess_management_app/domain/auth/auth_failure.dart';
import 'package:mess_management_app/domain/auth/i_auth_facade.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebase;

  FirebaseAuthFacade(this._firebase);
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      await _firebase.createUserWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    try {
      await _firebase.signInWithEmailAndPassword(
          email: emailAddress, password: password);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "invalid-email" ||
          e.code == "wrong-password" ||
          e.code == "invalid-credential") {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.code == "user-not-found") {
        return left(const AuthFailure.userNotFound());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() async {
    _firebase.signOut();
  }

  @override
  Future<Option<Unit>> getSignedInUser() async {
    if (_firebase.currentUser == null) {
      return none();
    } else {
      return some(unit);
    }
  }
}
