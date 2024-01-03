import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/auth/currentAuthStateOfUser/auth_bloc.dart';
import 'package:mess_management_app/application/dashboard/bloc/user_repository_bloc.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';
import 'package:mess_management_app/injection.dart';
import 'package:mess_management_app/presentation/mess/mess_info_page.dart';
import 'package:mess_management_app/presentation/mess_balance/mess_balance_page.dart';
import 'package:mess_management_app/presentation/mess_reallocation/mess_reallocation_page.dart';
import 'package:mess_management_app/presentation/mess_registration/mess_registration.dart';
import 'package:mess_management_app/presentation/sign_in/sign_in_page.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<UserRepositoryBloc>()
        ..add(const UserRepositoryEvent.fetchData()),
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
            () {
              return const SizedBox();
            },
            (a) => a.maybeMap(
              notFound: (value) {
                final GlobalKey<FormState> formKey = GlobalKey<FormState>();
                TextEditingController nameController = TextEditingController();
                TextEditingController rollNumberControleer =
                    TextEditingController();

                return SafeArea(
                  child: Scaffold(
                    body: Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Name"),
                            TextFormField(
                                controller: nameController,
                                validator: (value) => (value ?? "").isEmpty
                                    ? "Name cannont be empty"
                                    : null,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                )),
                            const SizedBox(height: 50),
                            const Text("Roll Number"),
                            TextFormField(
                              controller: rollNumberControleer,
                              validator: (value) => (value ?? "").length != 8
                                  ? "Incorrect roll number"
                                  : null,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(height: 50),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    context.read<UserRepositoryBloc>().add(
                                          UserRepositoryEvent.setUserData(
                                            UserClass(
                                              name: nameController.text,
                                              rollNumber:
                                                  rollNumberControleer.text,
                                              email: "",
                                            ),
                                          ),
                                        );

                                    context.read<UserRepositoryBloc>().add(
                                          const UserRepositoryEvent.fetchData(),
                                        );
                                  }
                                },
                                child: const Text("Add Details"),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
              orElse: () => TextButton(
                onPressed: () => context
                    .read<UserRepositoryBloc>()
                    .add(const UserRepositoryEvent.fetchData()),
                child: const Text("Some error occured. Try Again"),
              ),
            ),
          );
        } else {
          UserClass user = state.user!;
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(title: const Text("Dashboard")),
              body: Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                child: RefreshIndicator(
                  displacement: 40,
                  onRefresh: () => Future(
                    () => context.read<UserRepositoryBloc>().add(
                          const UserRepositoryEvent.fetchData(),
                        ),
                  ),
                  child: SingleChildScrollView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CircleAvatar(radius: 70),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          user.name,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        // ListTile(
                        //   title: const Text("Name"),
                        //   trailing: Text(user.name),
                        // ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Personal Details",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ),
                        ListTile(
                          title: const Text("Roll Number"),
                          trailing: Text(user.rollNumber),
                        ),
                        ListTile(
                          title: const Text("Email"),
                          trailing: Text(user.email),
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Mess Information",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.w600),
                          ),
                        ),
                        ListTile(
                          onTap: user.messName == "N/A"
                              ? null
                              : () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MessInfoPage(),
                                    ),
                                  );
                                },
                          title: const Text("Current Mess"),
                          trailing: Text(user.messName),
                        ),
                        ListTile(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => MessBalancePage(),
                              ),
                            );
                          },
                          title: const Text("Mess Balance"),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Rs. ${user.messBalance} ",
                                style: const TextStyle(
                                    color: Colors.green, fontSize: 20),
                              ),
                              const Icon(
                                Icons.arrow_forward,
                              )
                            ],
                          ),
                        ),
                        ListTile(
                          onTap: user.messName == "N/A"
                              ? () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MessRegistration(),
                                    ),
                                  );
                                }
                              : null,
                          title: const Text("Mess Registration"),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),
                        ListTile(
                          onTap: user.messName == "N/A"
                              ? null
                              : () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const MessReallocationPage(),
                                    ),
                                  );
                                },
                          title: const Text("Mess reallocation"),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        ),

                        Align(
                          alignment: Alignment.topRight,
                          child: FloatingActionButton(
                            child: const Icon(Icons.exit_to_app),
                            onPressed: () {
                              context
                                  .read<AuthBloc>()
                                  .add(const AuthEvent.signedOut());
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => SignInForm(),
                                ),
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        }
      }),
    );
  }
}
