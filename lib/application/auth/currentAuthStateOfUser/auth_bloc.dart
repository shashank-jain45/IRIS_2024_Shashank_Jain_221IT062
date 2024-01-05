import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../domain/auth/i_auth_facade.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

//This bloc is used to direct the flow of user based on whether he is authenticated or not i.e whether to show him the login page or The profile page
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const _Initial()) {
    // This event checks whether the app is authenticated or not, if not the Unauthenticated state is emitted,
    // if authenticated, an instance of Authenticated State is emitted with a instance of student containing uid of the user
    on<AuthChechRequested>((event, emit) async {
      final Option<Unit> student = await _authFacade.getSignedInUser();
      student.fold(
        () => emit(
          const Unauthenticated(),
        ),
        (unit) => emit(
          const Authenticated(),
        ),
      );
    });

    // this event signs out the user from the app
    on<SignedOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const Unauthenticated());
    });
  }
}
