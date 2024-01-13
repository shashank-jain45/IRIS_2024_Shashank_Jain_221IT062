import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:injectable/injectable.dart';
import 'firebase_notifications.dart';
import 'application/auth/bloc/sign_in_bloc.dart';
import 'application/auth/currentAuthStateOfUser/auth_bloc.dart';
import 'application/dashboard/bloc/user_repository_bloc.dart';
import 'infrastructure/core/firebase_options.dart';
import 'package:flutter/material.dart';
import 'domain/core/injection.dart';
import 'presentation/core/splash_screen.dart';

//function to listen to background changes
Future _firebaseBackgorundMessage(RemoteMessage message) async {
  if (message.notification != null) {}
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  PushNotifications.init();
  FirebaseMessaging.onBackgroundMessage(_firebaseBackgorundMessage);
  configureInjection(Environment.dev);
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
      child: MaterialApp(
        theme: ThemeData(
          textTheme: Typography.whiteRedmond.copyWith(
            bodyMedium: GoogleFonts.exo2(),
            bodySmall: GoogleFonts.exo2(),
            labelSmall:
                GoogleFonts.exo2(fontWeight: FontWeight.bold, fontSize: 17),
            bodyLarge: GoogleFonts.exo2(),
          ),
          colorScheme: ColorScheme.fromSeed(
            brightness: Brightness.dark,
            seedColor: const Color.fromRGBO(114, 134, 250, 1),
            primaryContainer: const Color.fromRGBO(114, 134, 250, 1),
          ),
          // colorSchemeSeed: const Color.fromARGB(255, 66, 85, 192),
          useMaterial3: true,
          // brightness: Brightness.dark,
        ),
        home: const SplashScreen(),
        color: Colors.indigo,
      ),
    );
  }
}
