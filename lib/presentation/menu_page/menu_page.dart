import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:mess_management_app/domain/menu/menu_model.dart';
import 'package:mess_management_app/presentation/menu_page/add_menu_page.dart';
import 'package:mess_management_app/presentation/menu_page/menu_card.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({
    Key? key,
    required this.menu,
  }) : super(key: key);
  final Menu menu;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Mess Menu"),
        ),
        body: menu == null
            ? const AddMenuPage()
            : Center(
                child: CarouselSlider(
                  items: [
                    MenuCard(
                      // dayMenu: dayMenuList?[0],
                      dayMenu: menu.menu["monday"], dayIndex: 1,
                    ),
                    MenuCard(
                      // dayMenu: dayMenuList?[1],
                      dayMenu: menu.menu["tuesday"], dayIndex: 2,
                    ),
                    MenuCard(
                      // dayMenu: dayMenuList?[2],
                      dayMenu: menu.menu["wednesday"], dayIndex: 3,
                    ),
                    // MenuCard(
                    //   // dayMenu: dayMenuList?[3],
                    //   dayMenu: null,
                    // ),
                    // MenuCard(
                    //   // dayMenu: dayMenuList?[4],
                    //   dayMenu: null,
                    // ),
                    // MenuCard(
                    //   // dayMenu: dayMenuList?[5],
                    //   dayMenu: null,
                    // ),
                    // MenuCard(
                    //   // dayMenu: dayMenuList?[6],
                    //   dayMenu: null,
                    // ),
                  ],
                  options: CarouselOptions(
                    initialPage: DateTime.now().weekday,
                    enlargeCenterPage: true,
                    aspectRatio: 9 / 14,
                  ),
                ),
              ),
      ),
    );
  }
}
