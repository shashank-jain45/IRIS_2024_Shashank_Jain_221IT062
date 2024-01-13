import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/core/injection.dart';

import '../../application/mess_details/bloc/mess_details_bloc.dart';
import '../../domain/menu/menu_model.dart';
import '../../domain/mess_details/mess_model.dart';

class MessInputForm extends StatelessWidget {
  const MessInputForm({
    super.key,
    required this.formKey,
    required this.messNameController,
    required this.messCapacityControleer,
    required this.breakfastController,
    required this.lunchController,
    required this.snacksController,
    required this.dinnerController,
    required this.messChargeController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController messNameController;
  final TextEditingController messCapacityControleer;
  final TextEditingController breakfastController;
  final TextEditingController lunchController;
  final TextEditingController snacksController;
  final TextEditingController dinnerController;
  final TextEditingController messChargeController;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getit<MessDetailsBloc>(),
      child: Builder(builder: (context) {
        return SingleChildScrollView(
          padding: MediaQuery.of(context).viewInsets,
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "Enter Mess Details",
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(height: 25),
                  TextFormField(
                    controller: messNameController,
                    validator: (value) =>
                        (value ?? "").isEmpty ? "Name cannont be empty" : null,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.supervised_user_circle_rounded),
                      label: const Text("Mess Name"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: messCapacityControleer,
                    validator: (value) => (value ?? "").isEmpty
                        ? "Mess Capacity cannot be 0"
                        : null,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.reduce_capacity),
                      label: const Text("Total mess Capacity"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: breakfastController,
                    validator: (value) =>
                        (value ?? "").isEmpty ? "Field cannot be empty" : null,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.menu_book),
                      label: const Text("Breakfast Menu"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: lunchController,
                    validator: (value) =>
                        (value ?? "").isEmpty ? "Field cannot be empty" : null,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.menu_book),
                      label: const Text("Lunch Menu"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: snacksController,
                    validator: (value) =>
                        (value ?? "").isEmpty ? "Field cannot be empty" : null,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.menu_book),
                      label: const Text("Snacks Menu"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: dinnerController,
                    validator: (value) =>
                        (value ?? "").isEmpty ? "Field cannot be empty" : null,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.menu_book),
                      label: const Text("Dinner Menu"),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: messChargeController,
                    validator: (value) => (value ?? "").isEmpty
                        ? "Mess charge cannot be 0"
                        : null,
                    decoration: InputDecoration(
                      label: const Text("Mess Charge",
                          style: TextStyle(fontSize: 15)),
                      icon: const Icon(Icons.currency_rupee),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 0, horizontal: 10),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey[400]!),
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<MessDetailsBloc>().add(
                                MessDetailsEvent.addMess(
                                  Mess(
                                    messName: messNameController.text,
                                    totalSeats:
                                        int.parse(messCapacityControleer.text),
                                    menuDetails: Menu(
                                        breakfast: breakfastController.text,
                                        lunch: lunchController.text,
                                        snacks: snacksController.text,
                                        dinner: dinnerController.text),
                                    messCharge: double.parse(
                                        messChargeController.text.trim()),
                                  ),
                                ),
                              );
                          Navigator.of(context).pop();
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
      }),
    );
  }
}
