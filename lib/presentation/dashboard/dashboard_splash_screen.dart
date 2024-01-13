import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'admin_page.dart';
import 'profile_page.dart';
import 'registration_page.dart';
import '../../application/dashboard/bloc/user_repository_bloc.dart';
import '../../domain/dashboard/user_data_model.dart';
import '../../domain/core/injection.dart';

class DashboardSplashScreen extends StatelessWidget {
  const DashboardSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<UserRepositoryBloc>()
        ..add(
          const UserRepositoryEvent.fetchData(),
        ),
      child: BlocBuilder<UserRepositoryBloc, UserRepositoryState>(
          builder: (context, state) {
        if (state.isFetching) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state.failureOrSuccess.isSome()) {
          return state.failureOrSuccess.fold(
            () => const SizedBox(),
            (a) => a.maybeMap(
              notFound: (value) {
                final GlobalKey<FormState> formKey = GlobalKey<FormState>();
                TextEditingController nameController = TextEditingController();
                TextEditingController rollNumberControleer =
                    TextEditingController();

                return RegistrationPage(
                  formKey: formKey,
                  nameController: nameController,
                  rollNumberControleer: rollNumberControleer,
                );
              },
              orElse: () => TextButton(
                onPressed: () => context.read<UserRepositoryBloc>().add(
                      const UserRepositoryEvent.fetchData(),
                    ),
                child: const Text(
                  "Some error occured. Try Again",
                ),
              ),
            ),
          );
        } else {
          UserClass user = state.user!;
          if (user.isAdmin!) {
            return AdminPage(user: user);
          } else {
            return ProfilePage(
              user: user,
            );
          }
        }
      }),
    );
  }
}
