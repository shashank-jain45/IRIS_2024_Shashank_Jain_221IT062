import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/mess_details/bloc/mess_details_bloc.dart';
import '../../application/mess_reallocation/bloc/mess_reallocation_bloc.dart';
import '../../application/mess_registration/bloc/mess_registration_bloc.dart';
import '../../domain/core/injection.dart';
import '../../domain/mess_reallocation/mess_reallocation.dart';
import 'mess_input_form.dart';
import '../mess_user_info_page/individual_mess_user_list.dart';

import '../../domain/mess_details/mess_model.dart';
import '../menu_page/menu_page.dart';

class MessInfoPage extends StatelessWidget {
  ///Display the list of all the messes and takes in params to determin the functions to be triggered based on whether the user is admin or not
  MessInfoPage({
    Key? key,
    required this.t,
    required this.isAdmin,
    required this.messName,
  }) : super(key: key);
  late List<Mess> messList;

  ///Variable to determine if the function to trigger is registration or reallocation
  final int t;
  final bool isAdmin;
  final String? messName;

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
                      ? const Center(
                          child: Text(
                          "No mess Has been added",
                          style: TextStyle(fontSize: 25),
                        ))
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
                                    //To show all registered users of a mess when admin logs in
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                      builder: (context) =>
                                          IndividualMessUserList(
                                        messList: messList,
                                        messName: messList[index].messName,
                                        messCharge: messList[index].messCharge,
                                        menu: messList[index].menuDetails,
                                      ),
                                    ));
                                  }
                                },
                                child: Container(
                                  decoration: ShapeDecoration(
                                    color:
                                        const Color.fromARGB(21, 158, 151, 151),
                                    shape: RoundedRectangleBorder(
                                      side: const BorderSide(
                                          color: Colors.white24),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Center(
                                              child: Text(
                                                messList[index].messName,
                                                style: const TextStyle(
                                                  fontSize: 25,
                                                  overflow:
                                                      TextOverflow.visible,
                                                ),
                                              ),
                                            ),
                                          ),
                                          isAdmin
                                              ? IconButton(
                                                  onPressed: () {
                                                    if (messList[index]
                                                            .noOfUsersRegistered ==
                                                        0) {
                                                      //To delete the mess

                                                      showDialog(
                                                        context: context,
                                                        builder: (context1) =>
                                                            AlertDialog(
                                                          title: Text(
                                                            "Are you sure you want to delete mess:${messList[index].messName}?",
                                                          ),
                                                          content: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child: const Text(
                                                                      "Cancel")),
                                                              TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    context
                                                                        .read<
                                                                            MessDetailsBloc>()
                                                                        .add(
                                                                          MessDetailsEvent.deleteMess(
                                                                              messList[index].messName),
                                                                        );
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  },
                                                                  child:
                                                                      const Text(
                                                                    "Delete",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .redAccent),
                                                                  )),
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    } else {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                          content: Text(
                                                              "Reallocate all the users before deleting the mess"),
                                                        ),
                                                      );
                                                    }
                                                  },
                                                  icon: const Icon(
                                                      Icons.cancel_outlined),
                                                )
                                              : const SizedBox(),
                                        ],
                                      ),
                                      Text(
                                        "Mess Charge: ₹ ${messList[index].messCharge}",
                                        style: const TextStyle(
                                          fontSize: 15,
                                        ),
                                      ),
                                      Text(
                                        "Occupancy: ${messList[index].noOfUsersRegistered}/${messList[index].totalSeats}",
                                        style: const TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      //To show menu page

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
                                          Navigator.of(context).push(
                                            MaterialPageRoute(
                                              builder: (context) => MenuPage(
                                                menu:
                                                    messList[index].menuDetails,
                                                messName:
                                                    messList[index].messName,
                                              ),
                                            ),
                                          );
                                        },
                                        icon: const Icon(Icons.restaurant_menu,
                                            size: 20),
                                        label: const Text(
                                          "Menu",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      isAdmin
                                          ? const SizedBox()
                                          : messName == messList[index].messName
                                              ? const Text(
                                                  "You are already registered")
                                              : messList[index]
                                                          .noOfUsersRegistered !=
                                                      messList[index].totalSeats
                                                  ? TextButton(
                                                      style: const ButtonStyle(
                                                        elevation:
                                                            MaterialStatePropertyAll(
                                                                15),
                                                        iconSize:
                                                            MaterialStatePropertyAll(
                                                          20,
                                                        ),
                                                      ),
                                                      onPressed: () {
                                                        //This is called when usaer registers for mess
                                                        if (t == 0) {
                                                          context
                                                              .read<
                                                                  MessRegistrationBloc>()
                                                              .add(
                                                                MessRegistrationEvent.apply(
                                                                    messList[
                                                                            index]
                                                                        .messName,
                                                                    null,
                                                                    null,
                                                                    messList[
                                                                            index]
                                                                        .messCharge,
                                                                    messList[
                                                                            index]
                                                                        .menuDetails),
                                                              );
                                                        } else {
                                                          //This is called when user applies for mess reallocation

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
                                                                          messList[index]
                                                                              .messName,
                                                                      messCharge:
                                                                          messList[index]
                                                                              .messCharge,
                                                                      menu: messList[
                                                                              index]
                                                                          .menuDetails),
                                                                ),
                                                              );
                                                        }
                                                      },
                                                      child: const Text(
                                                        "Apply",
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                    )
                                                  : const Text(
                                                      "Mess has reached it's capacity",
                                                      textAlign:
                                                          TextAlign.center,
                                                    )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                ),
                isAdmin
                    ? FloatingActionButton(
                        onPressed: () {
                          final GlobalKey<FormState> formKey = GlobalKey();
                          final TextEditingController messNameController =
                              TextEditingController();
                          final TextEditingController messCapacityControleer =
                              TextEditingController();
                          final TextEditingController breakfastController =
                              TextEditingController();
                          final TextEditingController lunchController =
                              TextEditingController();
                          final TextEditingController snacksController =
                              TextEditingController();
                          final TextEditingController dinnerController =
                              TextEditingController();
                          final TextEditingController messChargeController =
                              TextEditingController();
                          showModalBottomSheet(
                            useSafeArea: true,
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => MessInputForm(
                              formKey: formKey,
                              messNameController: messNameController,
                              messCapacityControleer: messCapacityControleer,
                              breakfastController: breakfastController,
                              lunchController: lunchController,
                              snacksController: snacksController,
                              dinnerController: dinnerController,
                              messChargeController: messChargeController,
                            ),
                          );
                        },
                        child: const Icon(Icons.add),
                      )
                    : const SizedBox()
              ],
            );
          },
        ));
  }
}
