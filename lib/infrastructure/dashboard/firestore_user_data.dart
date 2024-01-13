import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mess_management_app/domain/mess_reallocation/mess_reallocation.dart';
import '../../domain/core/firestore_failure.dart';
import '../../domain/dashboard/i_user_data_facade.dart';
import '../../domain/dashboard/user_data_model.dart';
import 'package:mess_management_app/domain/mess_balance/transaction_model.dart'
    as model;

import '../../domain/menu/menu_model.dart';

@LazySingleton(as: IUserDataFacade)
class FirestoreUserData implements IUserDataFacade {
  final FirebaseAuth _firebase;
  final FirebaseFirestore _firestore;
  FirestoreUserData(this._firestore, this._firebase) {
    // userId = _firebase.currentUser!.uid;
  }
  late String userId;

  @override
  Future<Either<FirestoreFailure, UserClass>> getUserProfile() async {
    userId = _firebase.currentUser!.uid;
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
    userId = _firebase.currentUser!.uid;
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
    userId = _firebase.currentUser!.uid;

    try {
      UserClass usersData =
          user.copyWith(email: _firebase.currentUser!.email!, id: userId);
      await _firestore.collection("users").doc(userId).set(usersData.toJson());
      return right(unit);
    } on FirebaseException catch (_) {
      return left(
        const FirestoreFailure.permissionDenied(),
      );
    }
  }

  @override
  Future<Either<FirestoreFailure, List<UserClass>>>
      reallocationRequestList() async {
    try {
      QuerySnapshot<Map<String, dynamic>> docs = await _firestore
          .collection("users")
          .where("messReallocationModel.isPending", isEqualTo: true)
          .get();
      if (docs.docs.isEmpty) {
        return left(
          const FirestoreFailure.notFound(),
        );
      }
      return Right(docs.docs.map(_docToUsers).toList());
    } catch (_) {
      return left(const FirestoreFailure.permissionDenied());
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> applyReallocationStatus(
      bool isApproved, UserClass user) async {
    userId = user.id!;
    MessReallocationModel model = user.messReallocationModel!.copyWith(
      isApproved: isApproved,
      isPending: false,
    );
    try {
      if (isApproved) {
        await _firestore.collection("mess").doc(user.messName).update(
          {
            "noOfUsersRegistered": FieldValue.increment(-1),
          },
        );
        await _firestore.collection("mess").doc(model.requestedMess).update(
          {
            "noOfUsersRegistered": FieldValue.increment(1),
          },
        );

        user = user.copyWith(
            messName: model.requestedMess, messCharge: model.messCharge, menu: model.menu);
      }
      UserClass usersData = user.copyWith(messReallocationModel: model);
      await _firestore.collection("users").doc(userId).set(
            usersData.toJson(),
          );
      return right(unit);
    } on FirebaseException catch (_) {
      return left(
        const FirestoreFailure.permissionDenied(),
      );
    }
  }
}

UserClass _docToUsers(DocumentSnapshot doc) {
  return UserClass.fromJson(doc.data() as Map<String, dynamic>);
}

//Function to map doc to transaction
model.Transaction _docToTransaction(DocumentSnapshot doc) {
  return model.Transaction.fromJson(doc.data() as Map<String, dynamic>);
}
