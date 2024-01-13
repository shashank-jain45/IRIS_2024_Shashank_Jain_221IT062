import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/mess_registration/bloc/mess_registration_bloc.dart';
import '../../domain/core/injection.dart';
import '../mess/mess_info_page.dart';

class MessRegistrationPage extends StatelessWidget {
  const MessRegistrationPage({
    Key? key,
    required this.isAdmin,
    required this.messName,
  }) : super(key: key);
  final bool isAdmin;
  final String messName;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<MessRegistrationBloc>(),
      child: Builder(builder: (context1) {
        return BlocConsumer<MessRegistrationBloc, MessRegistrationState>(
          listener: (context, state) {
            state.failure.fold(
              (l) => null,
              (r) => Navigator.of(context).pop(),
            );
          },
          builder: (context, state) => state.isFetching
              ? const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
              : SafeArea(
                  child: Scaffold(
                      appBar: AppBar(
                        title: const Text("Mess Details"),
                      ),
                      body: MessInfoPage(
                        t: 0,
                        isAdmin: isAdmin,
                        messName: messName,
                      )),
                ),
        );
      }),
    );
  }
}
