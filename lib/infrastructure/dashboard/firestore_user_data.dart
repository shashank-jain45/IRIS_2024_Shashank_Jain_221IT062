import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:mess_management_app/domain/core/firestore_failure.dart';
import 'package:mess_management_app/domain/dashboard/i_user_data_facade.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';
import 'package:mess_management_app/domain/mess_balance/transaction_model.dart'
    as model;

@LazySingleton(as: IUserDataFacade)
class FirestoreUserData implements IUserDataFacade {
  final FirebaseAuth _firebase;
  final FirebaseFirestore _firestore;
  FirestoreUserData(this._firestore, this._firebase) {
    userId = _firebase.currentUser!.uid;
  }
  late String userId;

  @override
  Future<Either<FirestoreFailure, UserClass>> getUserProfile() async {
    try {
      DocumentSnapshot doc =
          await _firestore.collection("users").doc(userId).get();
      if (doc.data() == null) {
        return left(const FirestoreFailure.notFound());
      }
      UserClass user = UserClass.fromJson(doc.data() as Map<String, dynamic>);
      return right(user);
    } on FirebaseException catch (_) {
      return left(
        const FirestoreFailure.permissionDenied(),
      );
    }
  }

  @override
  Future<Either<FirestoreFailure, List<model.Transaction>>>
      getUserTransactionHistory() async {
    try {
      QuerySnapshot doc = await _firestore
          .collection("users")
          .doc(userId)
          .collection("transactions")
          .get();
      return right(doc.docs.map(_docToTransaction).toList());
    } catch (_) {
      return left(const FirestoreFailure.permissionDenied());
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> setUserProfile(UserClass user) async {
    try {
      UserClass usersData = user.copyWith(email: _firebase.currentUser!.email!);
      await _firestore.collection("users").doc(userId).set(usersData.toJson());
      return right(unit);
    } catch (_) {
      return left(const FirestoreFailure.permissionDenied());
    }
  }
}

//Function to map doc to transaction
model.Transaction _docToTransaction(DocumentSnapshot doc) {
  return model.Transaction.fromJson(doc.data() as Map<String, dynamic>);
}
