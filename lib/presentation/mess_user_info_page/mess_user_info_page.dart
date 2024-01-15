import 'package:flutter/material.dart';
import '../mess/mess_info_page.dart';

///Displays all the messes to admin
class MessUserInfoPage extends StatelessWidget {
  const MessUserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mess Info"),
        ),
        body: MessInfoPage(
          t: 0,
          isAdmin: true,
          messName: null,
        ));
  }
}
