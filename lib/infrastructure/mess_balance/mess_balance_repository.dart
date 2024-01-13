import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/firestore_failure.dart';
import '../../domain/mess_balance/i_mess_balance_repository_facade.dart';
import 'package:mess_management_app/domain/mess_balance/transaction_model.dart'
    as tra;

@LazySingleton(as: IMessBalanceRepositoryFacade)
class MessBalanceRepository implements IMessBalanceRepositoryFacade {
  final FirebaseFirestore _firestore;
  final FirebaseAuth _firebase;
  MessBalanceRepository(
    this._firestore,
    this._firebase,
  );
  late String userId;
  @override
  Future<Either<FirestoreFailure, tra.Transaction>> addMessAmount(
      tra.Transaction trans) async {
    userId = _firebase.currentUser!.uid;
    try {
      await _firestore.collection("users").doc(userId).update(
        {
          "messBalance": trans.messBalance,
        },
      );
      await _firestore
          .collection("users")
          .doc(userId)
          .collection("transactions")
          .add(trans.toJson());
      return right(trans);
    } on FirebaseException catch (_) {
      return left(const FirestoreFailure.permissionDenied());
    }
  }

  @override
  Stream<List<tra.Transaction>> transactionDetails() {
    userId = _firebase.currentUser!.uid;

    return _firestore
        .collection("users")
        .doc(userId)
        .collection("transactions")
        .orderBy('time', descending: true)
        .snapshots()
        .map(_transactionDetailsFromMap);
  }


}

List<tra.Transaction> _transactionDetailsFromMap(QuerySnapshot snapshots) {
  return snapshots.docs
      .map((e) => tra.Transaction.fromJson(e.data() as Map<String, dynamic>))
      .toList();
}
