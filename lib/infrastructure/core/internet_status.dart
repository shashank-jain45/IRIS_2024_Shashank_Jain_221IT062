import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:mess_management_app/domain/core/firestore_failure.dart';

@injectable
class InternetStatus {
  Stream<Option<FirestoreFailure>> stream() {
    final Connectivity connectivity = Connectivity();
    return connectivity.onConnectivityChanged.map(_internetStatus);
  }

  Option<FirestoreFailure> _internetStatus(
      ConnectivityResult connectivityResult) {
    if (connectivityResult == ConnectivityResult.none) {
      return optionOf(const FirestoreFailure.noInternnet());
    } else {
      return none();
    }
  }
}
