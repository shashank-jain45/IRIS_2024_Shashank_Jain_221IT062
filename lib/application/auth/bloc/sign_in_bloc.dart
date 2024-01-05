import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/i_auth_facade.dart';
part 'sign_in_bloc.freezed.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

@injectable
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  final IAuthFacade _authFacade;
  SignInBloc(
    this._authFacade,
  ) : super(SignInState.initial()) {
    on<SignInWithEmailAndPasword>((event, emit) async {
      //authBloc.add(const AuthChechRequested());
      return await signInWithEmailAndPasword(event, emit);
    });

    //to trigger the register user process
    on<RegisterWithEmailAndPasword>((event, emit) async {
      //authBloc.add(const AuthChechRequested());
      return await registerWithEmailAndPasword(event, emit);
    });
  }
  Future registerWithEmailAndPasword(
      RegisterWithEmailAndPasword event, Emitter<SignInState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;
    emit(
      state.copyWith(
        emailAddress: event.email,
        password: event.password,
        isSubmitting: true,
        authFailureOrSuccess: none(),
      ),
    );

    failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
        emailAddress: state.emailAddress, password: state.password);

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }

  Future signInWithEmailAndPasword(
      SignInWithEmailAndPasword event, Emitter<SignInState> emit) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    emit(
      state.copyWith(
        emailAddress: event.email,
        password: event.password,
        isSubmitting: true,
        authFailureOrSuccess: none(),
      ),
    );

    failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress, password: state.password);

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }
}
