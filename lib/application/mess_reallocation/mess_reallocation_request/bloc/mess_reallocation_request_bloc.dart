import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../../domain/core/firestore_failure.dart';
import '../../../../domain/dashboard/i_user_data_facade.dart';
import '../../../../domain/dashboard/user_data_model.dart';
part 'mess_reallocation_request_event.dart';
part 'mess_reallocation_request_state.dart';
part 'mess_reallocation_request_bloc.freezed.dart';

@injectable
class MessReallocationRequestBloc
    extends Bloc<MessReallocationRequestEvent, MessReallocationRequestState> {
  final IUserDataFacade _firestoreUserData;
  MessReallocationRequestBloc(this._firestoreUserData)
      : super(MessReallocationRequestState.initial()) {
    on<Fetch>((event, emit) async {
      emit(state.copyWith(
        isFetching: true,
      ));
      Either<FirestoreFailure, List<UserClass>> failureOrSuccess =
          await _firestoreUserData.reallocationRequestList();

      failureOrSuccess.fold(
        (l) => emit(
          state.copyWith(
            isFetching: false,
            failure: optionOf(l),
          ),
        ),
        (r) => emit(
          state.copyWith(
            requests: optionOf(r),
            isFetching: false,
          ),
        ),
      );
    });
    on<UpdateStatus>((event, emit) async {
      Either<FirestoreFailure, Unit> failureOrSuccess =
          await _firestoreUserData.applyReallocationStatus(
              event.isApproved, event.user);
      failureOrSuccess.fold(
          (l) => emit(
                state.copyWith(
                  failure: optionOf(l),
                ),
              ),
          (r) => null);
    });
  }
}
