import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/mess_details/bloc/mess_details_bloc.dart';

import 'package:mess_management_app/application/mess_reallocation/bloc/mess_reallocation_bloc.dart';
import 'package:mess_management_app/application/mess_registration/bloc/mess_registration_bloc.dart';
import 'package:mess_management_app/domain/core/injection.dart';
import 'package:mess_management_app/domain/mess_reallocation/mess_reallocation.dart';
import 'package:mess_management_app/presentation/mess_user_info_page/individual_mess_user_list.dart';

import '../../domain/mess_details/mess_model.dart';

class MessInfoPage extends StatelessWidget {
  MessInfoPage({
    Key? key,
    required this.t,
    required this.isAdmin,
  }) : super(key: key);
  late List<Mess> messList;
  final int t;
  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<MessDetailsBloc>(),
      child: BlocBuilder<MessDetailsBloc, MessDetailsState>(
        builder: (context, state) {
          messList = state.messList;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: messList.isEmpty
                    ? const Text("No mess Has been added")
                    : GridView.builder(
                        itemCount: messList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(5),
                            child: InkWell(
                              onTap: () {
                                if (isAdmin) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        IndividualMessUserList(
                                            messList: messList,
                                            messName: messList[index].messName),
                                  ));
                                }
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: const Color.fromRGBO(114, 134, 250, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      messList[index].messName,
                                      style: const TextStyle(
                                        fontSize: 25,
                                      ),
                                    ),
                                    Text(
                                      "Occupancy: ${messList[index].noOfUsersRegistered}/${messList[index].totalSeats}",
                                      style: const TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    TextButton.icon(
                                      style: ButtonStyle(
                                        shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                            side: const BorderSide(
                                              color: Colors.white60,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                        ),
                                      ),
                                      onPressed: () {
                                        // Navigator.of(context).push(
                                        //   MaterialPageRoute(
                                        //     builder: (context) => const MenuPage(
                                        //       dayMenuList: null,
                                        //     ),
                                        //   ),
                                        // );
                                      },
                                      icon: const Icon(Icons.restaurant_menu,
                                          size: 30),
                                      label: const Text(
                                        "Menu",
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    isAdmin
                                        ? const SizedBox()
                                        : messList[index].noOfUsersRegistered !=
                                                messList[index].totalSeats
                                            ? TextButton(
                                                onPressed: () {
                                                  if (t == 0) {
                                                    context
                                                        .read<
                                                            MessRegistrationBloc>()
                                                        .add(
                                                          MessRegistrationEvent
                                                              .apply(
                                                                  messList[
                                                                          index]
                                                                      .messName,
                                                                  null),
                                                        );
                                                  } else {
                                                    context
                                                        .read<
                                                            MessReallocationBloc>()
                                                        .add(
                                                          MessReallocationEvent
                                                              .apply(
                                                            MessReallocationModel(
                                                              date: DateTime
                                                                  .now(),
                                                              requestedMess:
                                                                  messList[
                                                                          index]
                                                                      .messName,
                                                            ),
                                                          ),
                                                        );
                                                  }
                                                },
                                                child: const Text(
                                                  "Apply",
                                                  style:
                                                      TextStyle(fontSize: 30),
                                                ),
                                              )
                                            : const Text(
                                                "Mess has reached it's capacity")
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
              ),
              FloatingActionButton(
                onPressed: () {
                  final GlobalKey<FormState> formKey = GlobalKey();
                  final TextEditingController messNameController =
                      TextEditingController();
                  final TextEditingController messCapacityControleer =
                      TextEditingController();
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) => Form(
                      key: formKey,
                      autovalidateMode: AutovalidateMode.always,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Mess Name"),
                            TextFormField(
                                controller: messNameController,
                                validator: (value) => (value ?? "").isEmpty
                                    ? "Name cannont be empty"
                                    : null,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                )),
                            const SizedBox(height: 50),
                            const Text("Total Mess Capacity"),
                            TextFormField(
                              keyboardType: TextInputType.number,
                              controller: messCapacityControleer,
                              validator: (value) => (value ?? "").isEmpty
                                  ? "Mess Capacity cannot be 0"
                                  : null,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            Center(
                              child: TextButton(
                                onPressed: () {
                                  if (formKey.currentState!.validate()) {
                                    context.read<MessDetailsBloc>().add(
                                          MessDetailsEvent.addMess(
                                            Mess(
                                              messName: messNameController.text,
                                              totalSeats: int.parse(
                                                  messCapacityControleer.text),
                                            ),
                                          ),
                                        );
                                  }
                                },
                                child: const Text("Add Details"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: const Icon(Icons.add),
              )
            ],
          );
        },
      ),
    );
  }
}
