import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/core/firestore_failure.dart';
import '../../../domain/mess_registration/i_mess_registration_repository_facade.dart';

import '../../../domain/menu/menu_model.dart';

part 'mess_registration_event.dart';
part 'mess_registration_state.dart';
part 'mess_registration_bloc.freezed.dart';

@injectable
class MessRegistrationBloc
    extends Bloc<MessRegistrationEvent, MessRegistrationState> {
  final IMessRegistrationRepositoryFacade _iMessRegistrationRepositoryFacade;
  MessRegistrationBloc(this._iMessRegistrationRepositoryFacade)
      : super(MessRegistrationState.initial()) {
    on<MessRegistrationEventApply>(
      (event, emit) async {
        emit(
          state.copyWith(isFetching: true),
        );
        final Either<FirestoreFailure, Unit> failureOrSuccess =
            await _iMessRegistrationRepositoryFacade.applyFormMessRegistration(
                event.messName,
                event.userId,
                event.oldMess,
                event.messCharge,
                event.menu);

        failureOrSuccess.fold(
          (l) => emit(
            state.copyWith(
              isFetching: false,
              failure: left(optionOf(l)),
            ),
          ),
          (r) => emit(
            state.copyWith(isFetching: false, failure: right(unit)),
          ),
        );
      },
    );
  }
}
