import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/core/firestore_failure.dart';
import '../../../domain/mess_balance/i_mess_balance_repository_facade.dart';
import '../../../domain/mess_balance/transaction_model.dart';
part 'mess_balance_repository_event.dart';
part 'mess_balance_repository_state.dart';
part 'mess_balance_repository_bloc.freezed.dart';

@injectable
class MessBalanceRepositoryBloc
    extends Bloc<MessBalanceRepositoryEvent, MessBalanceRepositoryState> {
  IMessBalanceRepositoryFacade messBalanceRepository;
  MessBalanceRepositoryBloc(this.messBalanceRepository)
      : super(MessBalanceRepositoryState.initial()) {
    messBalanceRepository.transactionDetails().listen(
      (event) {
        add(MessBalanceRepositoryEvent.fetchTransactions(event));
      },
    );

    on<AddMessBalance>(
      (event, emit) async {
        emit(
          state.copyWith(isFetching: true),
        );
        Either<FirestoreFailure, Transaction> failureOrSuccess =
            await messBalanceRepository.addMessAmount(event.tran);
        failureOrSuccess.fold(
            (l) => emit(
                  state.copyWith(
                    isFetching: false,
                    failureOrSuccess: optionOf(l),
                  ),
                ),
            (r) {});
      },
    );

    on<FetchTransactions>(
      (event, emit) async {
        emit(
          state.copyWith(
            isFetching: false,
            trans: event.trans,
            messBalance: event.trans.isEmpty ? 0 : event.trans[0].messBalance,
          ),
        );
        // .fold(
        //       (l) => emit(
        //         state.copyWith(
        //           isFetching: false,
        //           failureOrSuccess: optionOf(l),
        //         ),
        //       ),
        //       (r) => r.listen(
        //         (event) {
        //           emit(
        //             state.copyWith(
        //               isFetching: false,
        //               trans: event,
        //             ),
        //           );
        //         },
        //       ),
        //     );
      },
    );
  }
}
