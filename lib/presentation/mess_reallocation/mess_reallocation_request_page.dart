import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:mess_management_app/application/mess_reallocation/mess_reallocation_request/bloc/mess_reallocation_request_bloc.dart';
import 'package:mess_management_app/domain/core/injection.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';

class MessReallocationRequestPage extends StatelessWidget {
  MessReallocationRequestPage({
    Key? key,
  }) : super(key: key);
  Option<bool> isApproved = none();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Requests"),
        ),
        body: BlocProvider(
          create: (context) => getit<MessReallocationRequestBloc>()
            ..add(const MessReallocationRequestEvent.fetch()),
          child: BlocBuilder<MessReallocationRequestBloc,
              MessReallocationRequestState>(
            builder: (context, state) {
              if (state.isFetching == true) {
                return const Center(child: CircularProgressIndicator());
              } else {
                late List<UserClass> userList = [];
                state.requests.map((a) => userList = a);
                return userList.isEmpty
                    ? const Center(
                        child: Text(
                          "No requests generated",
                          style: TextStyle(fontSize: 25),
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.all(10),
                        itemBuilder: (context, index) => ListTile(
                          contentPadding: const EdgeInsets.all(8),
                          isThreeLine: true,
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Text(
                                      userList[index].name,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                      child: Text(
                                          "₹ ${userList[index].messBalance}")),
                                ],
                              ),
                              Text(userList[index].rollNumber,
                                  style:
                                      const TextStyle(color: Colors.white70)),
                            ],
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: Text(
                                      "${userList[index].messName}--->",
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 25),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      userList[index]
                                          .messReallocationModel!
                                          .requestedMess,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      overflow: TextOverflow.fade,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                DateFormat.yMMMMd().format(
                                  userList[index].messReallocationModel!.date,
                                ),
                              )
                            ],
                          ),
                          trailing:
                              StatefulBuilder(builder: (context, setStateItem) {
                            return isApproved.fold(
                              () => Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextButton(
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.green),
                                        foregroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.white),
                                      ),
                                      onPressed: () {
                                        context
                                            .read<MessReallocationRequestBloc>()
                                            .add(
                                              MessReallocationRequestEvent
                                                  .updateStatus(
                                                true,
                                                userList[index],
                                              ),
                                            );

                                        setStateItem(() {
                                          isApproved = optionOf(true);
                                        });
                                      },
                                      child: const Text("Approve"),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context
                                            .read<MessReallocationRequestBloc>()
                                            .add(
                                              MessReallocationRequestEvent
                                                  .updateStatus(
                                                false,
                                                userList[index],
                                              ),
                                            );

                                        setStateItem(() {
                                          isApproved = optionOf(false);
                                        });
                                      },
                                      style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.red),
                                        foregroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.white),
                                      ),
                                      child: const Text(
                                        "Reject",
                                      ),
                                    )
                                  ]),
                              (a) => a
                                  ? const Text(
                                      "Approved",
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    )
                                  : const Text(
                                      "Rejeted",
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                            );
                          }),
                        ),
                        separatorBuilder: (context, index) => const Divider(
                          thickness: 2,
                          color: Colors.grey,
                        ),
                        itemCount: userList.length,
                      );
              }
            },
          ),
        ),
      ),
    );
  }
}
