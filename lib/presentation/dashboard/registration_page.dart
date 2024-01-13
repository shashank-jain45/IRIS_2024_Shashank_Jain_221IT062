import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mess_management_app/application/dashboard/bloc/user_repository_bloc.dart';
import 'package:mess_management_app/domain/dashboard/user_data_model.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.rollNumberControleer,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController rollNumberControleer;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.always,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Name"),
                TextFormField(
                    controller: nameController,
                    validator: (value) =>
                        (value ?? "").isEmpty ? "Name cannont be empty" : null,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                    )),
                const SizedBox(height: 50),
                const Text("Roll Number"),
                TextFormField(
                  controller: rollNumberControleer,
                  validator: (value) => (value ?? "").length != 8
                      ? "Incorrect roll number"
                      : null,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: TextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        context.read<UserRepositoryBloc>().add(
                              UserRepositoryEvent.setUserData(
                                UserClass(
                                    name: nameController.text,
                                    rollNumber: rollNumberControleer.text,
                                    email: "",
                                    messCharge: 0),
                              ),
                            );

                        context.read<UserRepositoryBloc>().add(
                              const UserRepositoryEvent.fetchData(),
                            );
                      }
                    },
                    child: const Text("Add Details"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
