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
        body: Center(
          child: CarouselSlider(
            items: [
              MenuCard(
                menu: menu,
                dayIndex: 1,
              ),
              MenuCard(
                menu: menu,
                dayIndex: 2,
              ),
              MenuCard(
                menu: menu,
                dayIndex: 3,
              ),
              MenuCard(
                menu: menu,
                dayIndex: 4,
              ),
              MenuCard(
                menu: menu,
                dayIndex: 5,
              ),
              MenuCard(
                menu: menu,
                dayIndex: 6,
              ),
              MenuCard(
                menu: menu,
                dayIndex: 7,
              ),
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
