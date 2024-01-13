import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/core/firestore_failure.dart';
import '../../../domain/mess_details/i_mess_details_repository.dart';
import '../../../domain/mess_details/mess_model.dart';
part 'mess_details_bloc.freezed.dart';
part 'mess_details_event.dart';
part 'mess_details_state.dart';

@injectable
class MessDetailsBloc extends Bloc<MessDetailsEvent, MessDetailsState> {
  IMessDetailsRepositoryFacade iMessDetailsRepository;
  MessDetailsBloc(
    this.iMessDetailsRepository,
  ) : super(MessDetailsState.intial()) {
    iMessDetailsRepository.fetchMessDetails().listen((event) {
      add(
        MessDetailsEvent.fetchMessList(event),
      );
    });
    on<FetchMessList>(
      (event, emit) {
        emit(
          state.copyWith(
            messList: event.messList,
          ),
        );
      },
    );
    on<AddMess>(
      (event, emit) async {
        emit(
          state.copyWith(isFetching: true),
        );
        final Either<FirestoreFailure, Unit> failureOrSuccess =
            await iMessDetailsRepository.addMess(event.mess);

        failureOrSuccess.fold(
          (l) => emit(
            state.copyWith(
              failure: optionOf(l),
              isFetching: false,
            ),
          ),
          (r) => emit(
            state.copyWith(
              isFetching: false,
            ),
          ),
        );
      },
    );

    on<DeleteMess>((event, emit) async {
      emit(
        state.copyWith(isFetching: true),
      );
      final Either<FirestoreFailure, Unit> failureOrSuccess =
          await iMessDetailsRepository.deleteMess(event.messName);

      failureOrSuccess.fold(
        (l) => emit(
          state.copyWith(
            failure: optionOf(l),
            isFetching: false,
          ),
        ),
        (r) => emit(
          state.copyWith(
            isFetching: false,
          ),
        ),
      );
    });
  }
}
