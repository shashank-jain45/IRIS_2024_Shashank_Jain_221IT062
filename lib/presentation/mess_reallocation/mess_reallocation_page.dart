import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:mess_management_app/application/mess_reallocation/bloc/mess_reallocation_bloc.dart';
import 'package:mess_management_app/domain/core/injection.dart';
import 'package:mess_management_app/domain/mess_reallocation/mess_reallocation.dart';
import 'package:mess_management_app/presentation/mess/mess_info_page.dart';

class MessReallocationPage extends StatelessWidget {
  final MessReallocationModel? model;
  const MessReallocationPage({
    Key? key,
    this.model,
    required this.messName,
  }) : super(key: key);
  final String messName;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<MessReallocationBloc>(),
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
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ListTile(
                                title: const Text(
                                  "Reallocation Status",
                                  style: TextStyle(
                                      // fontSize: 25,
                                      ),
                                ),
                                subtitle: Text(
                                  "Requested Mess: ${model!.requestedMess}",
                                  style: const TextStyle(
                                      // fontSize: 25,
                                      ),
                                ),
                                trailing: model!.isPending!
                                    ? const Text(
                                        "Pending",
                                        style: TextStyle(
                                            // fontSize: 25,
                                            color: Colors.orangeAccent),
                                      )
                                    : Text(
                                        model!.isApproved!
                                            ? "Approved"
                                            : "Rejected",
                                        style: TextStyle(
                                            // fontSize: 25,
                                            color: model!.isApproved!
                                                ? Colors.greenAccent
                                                : Colors.redAccent),
                                      ),
                              ),
                            ],
                          )
                        : const SizedBox(),
                    Expanded(
                      child: MessInfoPage(
                        t: 1,
                        isAdmin: false,
                        messName: messName,
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
