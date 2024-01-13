import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/mess_registration/bloc/mess_registration_bloc.dart';
import '../../application/mess_user_info/bloc/mess_user_info_bloc.dart';
import '../../domain/core/injection.dart';
import '../../domain/mess_details/mess_model.dart';

import '../../domain/menu/menu_model.dart';

class IndividualMessUserList extends StatelessWidget {
  const IndividualMessUserList({
    Key? key,
    required this.messName,
    required this.messList,
    required this.messCharge,
    required this.menu,
  }) : super(key: key);
  final String messName;
  final List<Mess> messList;
  final double messCharge;
  final Menu menu;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mess Name"),
      ),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getit<MessUserInfoBloc>()
              ..add(MessUserInfoEvent.fetchList(messName)),
          ),
          BlocProvider(
            create: (context) => getit<MessRegistrationBloc>(),
          ),
        ],
        child: BlocBuilder<MessUserInfoBloc, MessUserInfoState>(
          builder: (context, state) {
            if (state.isFetching) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return state.listOfUsers.isEmpty
                  ? const Center(
                      child: Text(
                        "Nobody opted this mess!",
                        style: TextStyle(fontSize: 25),
                      ),
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) =>
                          const Divider(thickness: 2),
                      itemCount: state.listOfUsers.length,
                      itemBuilder: (context, index) => ListTile(
                        isThreeLine: false,
                        title: Text(
                          state.listOfUsers[index].name,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        leading: Text(
                            "₹ ${state.listOfUsers[index].messBalance}",
                            style: const TextStyle(color: Colors.green)),
                        subtitle: Text(
                          state.listOfUsers[index].rollNumber,
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                        trailing: DropdownMenu(
                            width: 150,
                            onSelected: (value) {
                              value != null
                                  ? context.read<MessRegistrationBloc>().add(
                                      MessRegistrationEvent.apply(
                                          value,
                                          state.listOfUsers[index].id,
                                          messName,
                                          messCharge,
                                          menu))
                                  : null;
                            },
                            label: const Text(
                              "Mess",
                            ),
                            trailingIcon: const Icon(
                              Icons.arrow_drop_down_circle_outlined,
                              size: 25,
                            ),
                            initialSelection: messName,
                            dropdownMenuEntries: messList
                                .map(
                                  (e) => DropdownMenuEntry(
                                    value: e.messName,
                                    label: e.messName,
                                  ),
                                )
                                .toList()
                              ..add(const DropdownMenuEntry(
                                  value: "N/A", label: "Unassigned"))),
                      ),
                    );
            }
          },
        ),
      ),
    );
  }
}
