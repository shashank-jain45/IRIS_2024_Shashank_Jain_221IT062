import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:mess_management_app/application/auth/bloc/sign_in_bloc.dart';
import 'package:mess_management_app/application/auth/currentAuthStateOfUser/auth_bloc.dart';
import 'package:mess_management_app/application/dashboard/bloc/user_repository_bloc.dart';
import 'package:mess_management_app/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:mess_management_app/injection.dart';
import 'package:mess_management_app/presentation/core/splash_screen.dart';
import 'package:mess_management_app/presentation/sign_in/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.dev);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<SignInBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<UserRepositoryBloc>(),
        ),
        BlocProvider(
          create: (context) =>
              getit<AuthBloc>()..add(const AuthEvent.authChechRequested()),
        )
      ],
      child: const MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}