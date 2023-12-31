import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/auth/currentAuthStateOfUser/auth_bloc.dart';
import 'package:mess_management_app/presentation/dashboard/dashboard.dart';
import 'package:mess_management_app/presentation/sign_in/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (value) {},
          authenticated: (value) => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => const DashboardPage(),
            ),
          ),
          unauthenticated: (value) => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => SignInForm(),
            ),
          ),
        );
      },
      child: const Scaffold(
        body: CircularProgressIndicator(),
      ),
    );
  }
}
