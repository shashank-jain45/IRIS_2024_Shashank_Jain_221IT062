import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mess_management_app/infrastructure/core/internet_status.dart';
import '../../../domain/core/firestore_failure.dart';
import '../../../domain/dashboard/i_user_data_facade.dart';
import '../../../domain/dashboard/user_data_model.dart';
part 'user_repository_event.dart';
part 'user_repository_state.dart';
part 'user_repository_bloc.freezed.dart';

@injectable
class UserRepositoryBloc
    extends Bloc<UserRepositoryEvent, UserRepositoryState> {
  final IUserDataFacade _dataFacade;
  final InternetStatus internetStatus;
  UserRepositoryBloc(this._dataFacade, this.internetStatus)
      : super(UserRepositoryState.intial()) {
    internetStatus.stream().listen(
      (event) {
        event.fold(
          () => add(checkConnection(none())),
          (a) => add(checkConnection(optionOf(a))),
        );
      },
    );
    on<checkConnection>((event, emit) {
      emit(
        state.copyWith(internetConnection: left(event.failure)),
      );
    });
    on<FetchUserData>((event, emit) async {
      return await _fetchUserData(event, emit);
    });

    on<SetUserData>((event, emit) async {
      return await _setUserData(event, emit);
    });
  }
  Future<void> _fetchUserData(
      FetchUserData event, Emitter<UserRepositoryState> emit) async {
    emit(
      state.copyWith(
          isFetching: true, user: null, internetConnection: right(unit)),
    );
    Either<FirestoreFailure, UserClass> data =
        await _dataFacade.getUserProfile();
    data.fold(
      (l) => emit(
        state.copyWith(
            isFetching: false,
            failureOrSuccess: optionOf(l),
            internetConnection: right(unit)),
      ),
      (r) => emit(
        state.copyWith(
          isFetching: false,
          user: r,
          internetConnection: right(unit),
        ),
      ),
    );
  }

  Future<void> _setUserData(
      SetUserData event, Emitter<UserRepositoryState> emit) async {
    emit(state.copyWith(isFetching: true, internetConnection: right(unit)));
    Either<FirestoreFailure, Unit> data =
        await _dataFacade.setUserProfile(event.user);
    data.fold(
      (l) => emit(
        state.copyWith(
          isFetching: false,
          failureOrSuccess: optionOf(l),
        ),
      ),
      (r) => emit(
        state.copyWith(
          isFetching: false,
          failureOrSuccess: none(),
        ),
      ),
    );
  }
}
