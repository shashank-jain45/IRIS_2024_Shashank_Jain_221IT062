import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/mess_reallocation/bloc/mess_reallocation_bloc.dart';

import 'package:mess_management_app/application/mess_registration/bloc/mess_registration_bloc.dart';
import 'package:mess_management_app/domain/mess_reallocation/mess_reallocation.dart';

import '../../domain/mess_details/mess_model.dart';

class MessInfoPage extends StatelessWidget {
  const MessInfoPage({
    Key? key,
    required this.messList,
    required this.t,
  }) : super(key: key);
  final List<Mess> messList;
  final int t;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: messList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: Container(
            color: Colors.grey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  messList[index].messName,
                  style: const TextStyle(
                    fontSize: 35,
                  ),
                ),
                Text(
                  "No. of seats: ${messList[index].noOfUsersRegistered}/${messList[index].totalSeats}",
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextButton.icon(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      const BeveledRectangleBorder(
                        side: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  icon: const Icon(Icons.restaurant_menu, size: 30),
                  label: const Text(
                    "Menu",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                messList[index].noOfUsersRegistered !=
                        messList[index].totalSeats
                    ? TextButton(
                        onPressed: () {
                          if (t == 0) {
                            context.read<MessRegistrationBloc>().add(
                                  MessRegistrationEvent.apply(
                                      messList[index].messName),
                                );
                          } else {
                            context.read<MessReallocationBloc>().add(
                                  MessReallocationEvent.apply(
                                    MessReallocationModel(
                                      date: DateTime.now(),
                                      requestedMess: messList[index].messName,
                                    ),
                                  ),
                                );
                          }
                        },
                        child: const Text(
                          "Apply",
                          style: TextStyle(fontSize: 30),
                        ),
                      )
                    : const Text("Mess has reached it's capacity")
              ],
            ),
          ),
        );
      },
    );
  }
}
