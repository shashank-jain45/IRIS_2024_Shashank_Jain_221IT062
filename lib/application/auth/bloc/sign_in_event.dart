part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.registerWithEmailAndPasword(
      String email, String password) = RegisterWithEmailAndPasword;

  // when sign in button is pressed
  const factory SignInEvent.signInWithEmailAndPasword(
      String email, String password) = SignInWithEmailAndPasword;
}
