import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/core/firestore_failure.dart';
import '../../../domain/dashboard/user_data_model.dart';
import '../../../domain/mess_user_info/i_mess_user_info_facade.dart';
part 'mess_user_info_bloc.freezed.dart';
part 'mess_user_info_event.dart';
part 'mess_user_info_state.dart';

@injectable
class MessUserInfoBloc extends Bloc<MessUserInfoEvent, MessUserInfoState> {
  IMessUserInfoFacade iMessUserInfoFacade;
  MessUserInfoBloc(
    this.iMessUserInfoFacade,
  ) : super(MessUserInfoState.initial()) {
    on<FetchListOfUsers>((event, emit) async {
      emit(state.copyWith(isFetching: true));
      Either<FirestoreFailure, List<UserClass>> failureOrSuccess =
          await iMessUserInfoFacade.getUsersOfMess(event.messName);
      failureOrSuccess.fold(
        (l) => emit(
          state.copyWith(
            failure: optionOf(l),
            isFetching: false,
          ),
        ),
        (r) => emit(
          state.copyWith(listOfUsers: r, isFetching: false),
        ),
      );
    });
  }
}
