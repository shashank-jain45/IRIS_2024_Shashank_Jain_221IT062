import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/bloc/sign_in_bloc.dart';
import '../dashboard/dashboard_splash_screen.dart';
import 'sign_up_page.dart';

class SignInForm extends StatelessWidget {
  SignInForm({super.key});
  static const regExp =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInBloc, SignInState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () => unit,
          (a) => a.fold(
            (l) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  l.when(
                      serverError: () => "Server Error",
                      emailAlreadyInUse: () => "Email Already In Use",
                      invalidEmailAndPasswordCombination: () =>
                          "Inavlid email and passowrd combination",
                      userNotFound: () => "User not registered"),
                ),
              ),
            ),
            (r) {
              return Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const DashboardSplashScreen(),
                ),
              );
            },
          ),
        );
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(title: const Text("Log In")),
          body: Padding(
            padding: const EdgeInsets.all(25),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: emailController,
                    validator: (value) => RegExp(regExp).hasMatch(value ?? "")
                        ? null
                        : "Invalid Email",
                    decoration: InputDecoration(
                      label: const Text("Email"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    validator: (value) =>
                        value!.length < 6 ? "Too Short" : null,
                    decoration: InputDecoration(
                      label: const Text("Password"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<SignInBloc>().add(
                                SignInEvent.signInWithEmailAndPasword(
                                    emailController.text.trim(),
                                    passwordController.text.trim()),
                              );
                        }
                      },
                      child: const Text("Log In"),
                    ),
                  ),
                  BlocBuilder<SignInBloc, SignInState>(
                    builder: (context, state) {
                      return state.isSubmitting
                          ? const LinearProgressIndicator()
                          : const SizedBox();
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Don't have an account?"),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => SignUpForm(),
                            ),
                          );
                        },
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
