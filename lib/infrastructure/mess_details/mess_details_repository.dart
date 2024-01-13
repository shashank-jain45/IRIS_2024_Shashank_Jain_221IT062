import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mess_management_app/domain/core/firestore_failure.dart';
import 'package:mess_management_app/domain/mess_details/i_mess_details_repository.dart';
import '../../domain/mess_details/mess_model.dart';

@LazySingleton(as: IMessDetailsRepositoryFacade)
class MessDetailsRepositoryFacade implements IMessDetailsRepositoryFacade {
  final FirebaseFirestore _firestore;
  MessDetailsRepositoryFacade(
    this._firestore,
  );
  @override
  Stream<List<Mess>> fetchMessDetails() {
    return _firestore.collection("mess").snapshots().map(_mapFetchMessDetails);
  }

  List<Mess> _mapFetchMessDetails(QuerySnapshot snapshot) {
    return snapshot.docs
        .map(
          (e) => Mess.fromJson(e.data() as Map<String, dynamic>),
        )
        .toList();
  }

  @override
  Future<Either<FirestoreFailure, Unit>> addMess(Mess mess) async {
    try {
      await _firestore.collection("mess").doc(mess.messName).set(
            mess.toJson(),
          );
      return right(unit);
    } catch (e) {
      return left(const FirestoreFailure.permissionDenied());
    }
  }

  @override
  Future<Either<FirestoreFailure, Unit>> deleteMess(String messName) async {
    try {
      await _firestore.collection("mess").doc(messName).delete();
      return right(unit);
    } catch (e) {
      return left(const FirestoreFailure.permissionDenied());
    }
  }
}
