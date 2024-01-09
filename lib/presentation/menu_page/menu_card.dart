import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:mess_management_app/domain/menu/menu_model.dart';

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key? key,
    required this.dayMenu,
    required this.dayIndex,
  }) : super(key: key);
  final DayMenu? dayMenu;
  final int dayIndex;
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
              itemNames: dayMenu!.items[index],
              timings: dayMenu!.time[index],
              mealName: dayMenu!.mealName[index],
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
    return ListTile(
      visualDensity: const VisualDensity(vertical: 3),
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black,
        ),
      ),
      contentPadding: const EdgeInsets.all(8),
      isThreeLine: true,
      title: Text(
        mealName ?? "Breakfast",
        style: const TextStyle(
          color: Colors.blue,
        ),
      ),
      trailing: Text(
        timings ?? "10:00 - 9:30",
        style: TextStyle(
          color: Colors.amber.shade700,
        ),
      ),
      subtitle: Text(
        itemNames ?? "asdasdasdsdas sdasd asdas asdasd asdasd",
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
