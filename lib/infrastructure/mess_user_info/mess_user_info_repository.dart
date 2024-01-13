import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/firestore_failure.dart';
import '../../domain/dashboard/user_data_model.dart';
import '../../domain/mess_user_info/i_mess_user_info_facade.dart';

@LazySingleton(as: IMessUserInfoFacade)
class MessUserInfoRepository implements IMessUserInfoFacade {
  final FirebaseFirestore _firestore;

  MessUserInfoRepository(
    this._firestore,
  );
  @override
  Future<Either<FirestoreFailure, List<UserClass>>> getUsersOfMess(
      String messName) async {
    try {
      QuerySnapshot snapshot = await _firestore
          .collection("users")
          .where("messName", isEqualTo: messName)
          .get();
      return right(snapshot.docs.map(_mapToUser).toList());
    } catch (e) {
      return left(const FirestoreFailure.permissionDenied());
    }
  }

  UserClass _mapToUser(QueryDocumentSnapshot snap) {
    return UserClass.fromJson(snap.data() as Map<String, dynamic>);
  }
}
