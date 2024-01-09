import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/currentAuthStateOfUser/auth_bloc.dart';
import '../dashboard/dashboard_splash_screen.dart';
import '../sign_in/sign_up_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (value) {},
          authenticated: (value) => {
            // context.read<UserRepositoryBloc>().add(
            //       const UserRepositoryEvent.fetchData(),
            //     ),
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => const DashboardSplashScreen(),
              ),
            ),
          },
          unauthenticated: (value) => Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => SignUpForm(),
            ),
          ),
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
