import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/core/firestore_failure.dart';
import '../../../domain/mess_reallocation/i_mess_reallocation_repository_facade.dart';
import '../../../domain/mess_reallocation/mess_reallocation.dart';
part 'mess_reallocation_event.dart';
part 'mess_reallocation_state.dart';
part 'mess_reallocation_bloc.freezed.dart';

@injectable
class MessReallocationBloc
    extends Bloc<MessReallocationEvent, MessReallocationState> {
  IMessReallocationRepositoryFacade messReallocationRepositoryFacade;
  MessReallocationBloc(this.messReallocationRepositoryFacade)
      : super(MessReallocationState.initial()) {
    on<ApplyForMessReallocation>(
      (event, emit) async {
        emit(
          state.copyWith(isFetching: true),
        );
        Either<FirestoreFailure, Unit> failureOrSuccess =
            await messReallocationRepositoryFacade.applyForMessReallocation(
          event.messReallocationModel,
        );
        failureOrSuccess.fold(
          (l) => emit(
            state.copyWith(
              failure: left(optionOf(l)),
              isFetching: false,
            ),
          ),
          (r) => emit(
            state.copyWith(
              isFetching: false,
              failure: right(unit),
            ),
          ),
        );
      },
    );
  }
}
