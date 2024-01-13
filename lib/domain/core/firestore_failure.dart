import 'package:freezed_annotation/freezed_annotation.dart';
part 'firestore_failure.freezed.dart';

@freezed
abstract class FirestoreFailure with _$FirestoreFailure {
  const factory FirestoreFailure.cacelled() = Cancelled;
  const factory FirestoreFailure.notFound() = NotFound;
  const factory FirestoreFailure.permissionDenied() = PermissionDenied;
  const factory FirestoreFailure.unathenticated() = Unauthenticated;
  const factory FirestoreFailure.noInternnet() = NoInternnet;
}
