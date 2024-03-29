import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/menu/menu_model.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.dayIndex,
    required this.menu,
  }) : super(key: key);
  final int dayIndex;
  final Menu menu;
  static const List<String> mealName = [
    "Breakfast",
    "Lunch",
    "Snacks",
    "Dinner"
  ];
  static const List<String> mealTimming = [
    "08:00  - 09:30 ",
    "12:00  - 14:00 ",
    "16:30  - 18:00 ",
    "19:30  - 21:30 "
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          DateFormat.MMMEd().format(
            DateTime.now().add(
              Duration(days: dayIndex),
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => MealSubCard(
              itemNames: index == 0
                  ? menu.breakfast
                  : index == 1
                      ? menu.lunch
                      : index == 2
                          ? menu.snacks
                          : menu.dinner,
              timings: mealTimming[index],
              mealName: mealName[index],
            ),
          ),
        ),
      ],
    );
  }
}

class MealSubCard extends StatelessWidget {
  const MealSubCard({
    Key? key,
    required this.itemNames,
    required this.timings,
    required this.mealName,
  }) : super(key: key);
  final String itemNames;
  final String timings;
  final String mealName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Container(
          width: 4,
          decoration: BoxDecoration(color: Colors.cyan.shade900),
        ),
        visualDensity: const VisualDensity(vertical: 3),
        shape: const RoundedRectangleBorder(
            side: BorderSide(
              color: Colors.blueGrey,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        contentPadding: const EdgeInsets.all(8),
        isThreeLine: true,
        title: Text(
          mealName ,
          style: const TextStyle(
            color: Colors.blue,
          ),
        ),
        trailing: Text(
          timings ,
          style: TextStyle(
            color: Colors.amber.shade700,
          ),
        ),
        subtitle: Text(
          itemNames ,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
