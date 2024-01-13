import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import '../../domain/core/firestore_failure.dart';
import '../../domain/menu/menu_model.dart';
import '../../domain/mess_registration/i_mess_registration_repository_facade.dart';

@LazySingleton(as: IMessRegistrationRepositoryFacade)
class MessRegistration implements IMessRegistrationRepositoryFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  MessRegistration(
    this._firestore,
    this._firebaseAuth,
  );
  @override
  Future<Either<FirestoreFailure, Unit>> applyFormMessRegistration(
      String messName,
      String? userId,
      String? oldmessName,
      double messCharge,
      Menu menu) async {
    String userid = _firebaseAuth.currentUser!.uid;
    if (userId != null) {
      userid = userId;
      await _firestore.collection("mess").doc(oldmessName).update(
        {
          "noOfUsersRegistered": FieldValue.increment(-1),
        },
      );
    }
    try {
      await _firestore.collection("users").doc(userid).update({
        "messName": messName,
        "messCharge": messCharge,
        "menu": menu.toJson()
      });
      await _firestore.collection("mess").doc(messName).update(
        {
          "noOfUsersRegistered": FieldValue.increment(1),
        },
      );
      return right(unit);
    } catch (e) {
      return left(
        const FirestoreFailure.permissionDenied(),
      );
    }
  }
}
