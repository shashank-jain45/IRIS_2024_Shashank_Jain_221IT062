import 'package:flutter/material.dart';

class AddMenuPage extends StatelessWidget {
  const AddMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const Text("Breakfast"),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const Text("Lunch"),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const Text("Snacks"),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          const Text("Dinner"),
          TextFormField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          Center(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Add",
                    style: TextStyle(fontSize: 25),
                  )))
        ],
      ),
    ));
  }
}
