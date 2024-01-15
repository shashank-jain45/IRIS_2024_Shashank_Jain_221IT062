import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/currentAuthStateOfUser/auth_bloc.dart';
import '../../application/dashboard/bloc/user_repository_bloc.dart';
import '../../domain/dashboard/user_data_model.dart';
import '../mess_reallocation/mess_reallocation_request_page.dart';
import '../mess_user_info_page/mess_user_info_page.dart';
import '../sign_in/sign_in_page.dart';

///Admin Dashboard
class AdminPage extends StatelessWidget {
  const AdminPage({
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
                children: [
                  const CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage("assets/images.png"),
                  ),
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
                    leading: const Icon(Icons.person),
                    title: const Text("Roll Number"),
                    trailing: Text(user.rollNumber),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(12), bottom: Radius.circular(5)),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    leading: const Icon(Icons.email),
                    title: const Text("Email"),
                    trailing: Text(user.email),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(5), bottom: Radius.circular(12)),
                    ),
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
                    leading: const Icon(Icons.restart_alt_sharp),
                    onTap: () {
                      Navigator.of(context)
                          .push(
                            MaterialPageRoute(
                              builder: (context) =>
                                  MessReallocationRequestPage(),
                            ),
                          )
                          .then(
                            (_) => context.read<UserRepositoryBloc>().add(
                                  const UserRepositoryEvent.fetchData(),
                                ),
                          );
                    },
                    title: const Text("Mess Reallocation Requests"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(12), bottom: Radius.circular(5)),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  ListTile(
                    leading: const Icon(Icons.restaurant),
                    onTap: () {
                      Navigator.of(context)
                          .push(
                            MaterialPageRoute(
                              builder: (context) => const MessUserInfoPage(),
                            ),
                          )
                          .then(
                            (_) => context.read<UserRepositoryBloc>().add(
                                  const UserRepositoryEvent.fetchData(),
                                ),
                          );
                    },
                    title: const Text("Mess Info"),
                    trailing: const Icon(Icons.arrow_forward_ios),
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadiusDirectional.vertical(
                          top: Radius.circular(5), bottom: Radius.circular(12)),
                    ),
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
