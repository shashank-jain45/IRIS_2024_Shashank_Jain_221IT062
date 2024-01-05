import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/mess_details/bloc/mess_details_bloc.dart';
import 'package:mess_management_app/application/mess_registration/bloc/mess_registration_bloc.dart';
import 'package:mess_management_app/domain/core/injection.dart';
import 'package:mess_management_app/domain/mess_details/mess_model.dart';
import 'package:mess_management_app/presentation/mess/mess_info_page.dart';

class MessRegistration extends StatelessWidget {
  const MessRegistration({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<MessRegistrationBloc>(),
        ),
        BlocProvider(
          lazy: false,
          create: (context) => getit<MessDetailsBloc>(),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocConsumer<MessRegistrationBloc, MessRegistrationState>(
          listener: (context, state) {
            state.failure.fold(
              (l) => null,
              (r) => Navigator.of(context).pop(),
            );
          },
          builder: (context, state) => state.isFetching
              ? const Scaffold(body: Center(child: CircularProgressIndicator()))
              : Scaffold(
                  appBar: AppBar(
                    title: const Text("Mess Details"),
                    actions: [
                      IconButton(
                        onPressed: () => context.read<MessDetailsBloc>().add(
                              const MessDetailsEvent.addMess(
                                Mess(
                                  messName: "Block5",
                                  totalSeats: 650,
                                ),
                              ),
                            ),
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  ),
                  body: BlocBuilder<MessDetailsBloc, MessDetailsState>(
                    builder: (context, state) {
                      return state.messList.isEmpty
                          ? const Center(
                              child: Text(
                                "No mess has been added",
                                style: TextStyle(fontSize: 25),
                              ),
                            )
                          : MessInfoPage(
                              messList: state.messList,
                              t: 0,
                            );
                    },
                  ),
                ),
        );
      }),
    );
  }
}
