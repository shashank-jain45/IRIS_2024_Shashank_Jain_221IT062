import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/firestore_failure.dart';
import '../../domain/mess_reallocation/i_mess_reallocation_repository_facade.dart';
import '../../domain/mess_reallocation/mess_reallocation.dart';

@LazySingleton(as: IMessReallocationRepositoryFacade)
class MessReallocationRepository implements IMessReallocationRepositoryFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebaseAuth;
  MessReallocationRepository(this._firestore, this._firebaseAuth);

  @override
  Future<Either<FirestoreFailure, Unit>> applyForMessReallocation(
    MessReallocationModel messReallocationModel,
  ) async {
    String userId = _firebaseAuth.currentUser!.uid;
    try {
      await _firestore.collection("users").doc(userId).update({
        "messReallocationModel": messReallocationModel.toJson(),
      });
      return right(unit);
    } catch (_) {
      return left(
        const FirestoreFailure.permissionDenied(),
      );
    }
  }
}
