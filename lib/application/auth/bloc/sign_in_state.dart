part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState(
          {required String emailAddress,
          required String password,
          required bool isSubmitting,
          required Option<Either<AuthFailure, Unit>> authFailureOrSuccess}) =
      _SignInState;
  factory SignInState.initial() => SignInState(
      emailAddress: "",
      password: "",
      isSubmitting: false,
      authFailureOrSuccess: none());
}
