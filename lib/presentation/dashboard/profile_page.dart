import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/currentAuthStateOfUser/auth_bloc.dart';
import '../../application/dashboard/bloc/user_repository_bloc.dart';
import '../../domain/dashboard/user_data_model.dart';
import '../menu_page/menu_page.dart';
import '../mess_balance/mess_balance_page.dart';
import '../mess_registration/mess_registration.dart';
import '../sign_in/sign_in_page.dart';

import '../mess_reallocation/mess_reallocation_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.user,
  });

  final UserClass user;

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserRepositoryBloc, UserRepositoryState>(
      listener: (context, state) {
        state.internetConnection.fold(
          (l) => l.fold(
            () => ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.green,
                content: Text("Internet Available"),
                showCloseIcon: true,
              ),
            ),
            (a) => a.mapOrNull(
              noInternnet: (value) =>
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("No Internet Found, You are viewing cached data"),
                showCloseIcon: true,
                backgroundColor: Colors.red,
              )),
            ),
          ),
          (r) => null,
        );
      },
      child: SafeArea(
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
                    const CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage(
                        "assets/images (1).png",
                      ),
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
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 5),

                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Roll Number"),
                      trailing: Text(user.rollNumber),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(12),
                            bottom: Radius.circular(5)),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      leading: const Icon(Icons.email),
                      title: const Text("Email"),
                      trailing: Text(user.email),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadiusDirectional.vertical(
                            bottom: Radius.circular(12),
                            top: Radius.circular(5)),
                      ),
                    ),
                    const SizedBox(height: 5),

                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Mess Information",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const SizedBox(height: 5),

                    ListTile(
                      leading: const Icon(Icons.restaurant),
                      onTap: user.messName == "N/A"
                          ? null
                          : () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => MenuPage(
                                          menu: user.menu!,
                                          messName: user.messName,
                                        )),
                              );
                            },
                      title: const Text("Current Mess"),
                      trailing: Text(user.messName),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(12),
                            bottom: Radius.circular(5)),
                      ),
                    ),
                    const SizedBox(height: 5),

                    ListTile(
                      leading: const Icon(Icons.currency_rupee_outlined),
                      onTap: () {
                        Navigator.of(context)
                            .push(
                              MaterialPageRoute(
                                builder: (context) => MessBalancePage(
                                    messCharge: user.messCharge,messName: user.messName),
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
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadiusDirectional.vertical(
                            bottom: Radius.circular(5),
                            top: Radius.circular(5)),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      leading: const Icon(Icons.person_add_alt),
                      onTap: () {
                        user.messName == "N/A"
                            ? user.messBalance < 1000
                                ? ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      backgroundColor:
                                          Color.fromRGBO(114, 134, 250, 1),
                                      content: Text(
                                        "Insufficient mess balance, add ₹1000",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  )
                                : Navigator.of(context)
                                    .push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            MessRegistrationPage(
                                          isAdmin: user.isAdmin!,
                                          messName: user.messName,
                                        ),
                                      ),
                                    )
                                    .then(
                                      (_) => context
                                          .read<UserRepositoryBloc>()
                                          .add(
                                            const UserRepositoryEvent
                                                .fetchData(),
                                          ),
                                    )
                            : ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor:
                                      Color.fromRGBO(114, 134, 250, 1),
                                  content: Text(
                                      "You have already registered for mess!",
                                      style: TextStyle(
                                          color: Colors.orangeAccent,
                                          fontWeight: FontWeight.bold)),
                                ),
                              );
                      },
                      title: const Text("Mess Registration"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadiusDirectional.vertical(
                            top: Radius.circular(5),
                            bottom: Radius.circular(5)),
                      ),
                    ),
                    const SizedBox(height: 5),
                    ListTile(
                      leading: const Icon(Icons.restart_alt),
                      onTap: () {
                        user.messName == "N/A"
                            ? ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor:
                                      Color.fromRGBO(114, 134, 250, 1),
                                  content: Text(
                                    "Please register for a mess first",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            : Navigator.of(context)
                                .push(
                                  MaterialPageRoute(
                                    builder: (context) => MessReallocationPage(
                                      model: user.messReallocationModel,
                                      messName: user.messName,
                                    ),
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
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.blueGrey),
                        borderRadius: BorderRadiusDirectional.vertical(
                            bottom: Radius.circular(12),
                            top: Radius.circular(5)),
                      ),
                    ),
                    const SizedBox(height: 20),
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
      ),
    );
  }
}
