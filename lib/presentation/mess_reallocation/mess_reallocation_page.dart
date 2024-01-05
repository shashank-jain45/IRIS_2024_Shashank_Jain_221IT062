import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/mess_details/bloc/mess_details_bloc.dart';
import 'package:mess_management_app/application/mess_reallocation/bloc/mess_reallocation_bloc.dart';
import 'package:mess_management_app/domain/core/injection.dart';
import 'package:mess_management_app/domain/mess_reallocation/mess_reallocation.dart';
import 'package:mess_management_app/presentation/mess/mess_info_page.dart';

class MessReallocationPage extends StatelessWidget {
  final MessReallocationModel? model;
  const MessReallocationPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getit<MessReallocationBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MessDetailsBloc>(),
        ),
      ],
      child: BlocConsumer<MessReallocationBloc, MessReallocationState>(
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
            : Scaffold(
                appBar: AppBar(
                  title: const Text("Mess Reallocation"),
                ),
                body: Column(
                  children: [
                    model != null
                        ? Column(
                            children: [
                              const Text(
                                "Reallocation Status",
                                style: TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              const SizedBox(height: 25),
                              Text(
                                "Requested Mess: ${model!.requestedMess}",
                                style: const TextStyle(
                                  fontSize: 25,
                                ),
                              ),
                              model!.isPending!
                                  ? const Text(
                                      "Status : Pending",
                                      style: TextStyle(
                                        fontSize: 25,
                                      ),
                                    )
                                  : Text(
                                      "Status:${model!.isApproved! ? "Approved" : "Rejected"}",
                                      style: const TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                            ],
                          )
                        : const SizedBox(),
                    BlocBuilder<MessDetailsBloc, MessDetailsState>(
                      builder: (context, state) {
                        return Expanded(
                          child: MessInfoPage(
                            messList: state.messList,
                            t: 1,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
