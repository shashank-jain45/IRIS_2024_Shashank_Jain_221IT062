import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/auth/currentAuthStateOfUser/auth_bloc.dart';
import 'package:mess_management_app/application/dashboard/bloc/user_repository_bloc.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';
import 'package:mess_management_app/presentation/menu_page/menu_page.dart';
import 'package:mess_management_app/presentation/mess_balance/mess_balance_page.dart';
import 'package:mess_management_app/presentation/mess_registration/mess_registration.dart';
import 'package:mess_management_app/presentation/sign_in/sign_in_page.dart';

import '../mess_reallocation/mess_reallocation_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.user,
  });

  final UserClass user;

  @override
  Widget build(BuildContext context) {
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
                  const CircleAvatar(radius: 70,),
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
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
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                  ListTile(
                    onTap: user.messName == "N/A"
                        ? null
                        : () {
                            // Navigator.of(context).push(
                            //   MaterialPageRoute(
                            //       builder: (context) => const MenuPage(
                            //             dayMenuList: [],
                            //           )),
                            // );
                          },
                    title: const Text("Current Mess"),
                    trailing: Text(user.messName),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context)
                          .push(
                            MaterialPageRoute(
                              builder: (context) => MessBalancePage(),
                            ),
                          )
                          .then(
                            (_) => context.read<UserRepositoryBloc>().add(
                                  const UserRepositoryEvent.fetchData(),
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
                    onTap: () {
                      user.messName != "N/A"
                          ? ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                  "You have already registered for mess",
                                ),
                              ),
                            )
                          : Navigator.of(context)
                              .push(
                                MaterialPageRoute(
                                  builder: (context) => MessRegistrationPage(
                                    isAdmin: user.isAdmin!,
                                  ),
                                ),
                              )
                              .then(
                                (_) => context.read<UserRepositoryBloc>().add(
                                      const UserRepositoryEvent.fetchData(),
                                    ),
                              );
                    },
                    title: const Text("Mess Registration"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.of(context)
                          .push(
                            MaterialPageRoute(
                              builder: (context) => MessReallocationPage(
                                  model: user.messReallocationModel),
                            ),
                          )
                          .then(
                            (_) => context.read<UserRepositoryBloc>().add(
                                  const UserRepositoryEvent.fetchData(),
                                ),
                          );
                    },
                    title: const Text("Mess Reallocation"),
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
                        Navigator.of(context)
                            .pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => SignInForm(),
                              ),
                            )
                            .then(
                              (_) => context.read<UserRepositoryBloc>().add(
                                    const UserRepositoryEvent.fetchData(),
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
}
