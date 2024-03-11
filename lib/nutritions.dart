import 'package:flutter/material.dart';
import 'package:recipe_page/constants.dart';

class Nutrition extends StatelessWidget {
  final String name;
  final String value;

  const Nutrition({super.key, required this.name, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(this.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20, fontWeight: FontWeight.w700))),
        Expanded(
            child: Text(this.value,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: kColorBrown))),
      ],
    );
  }
}

class NutritionList extends StatelessWidget {
  List<Widget> nutritionList = [];
  List nutritionJSON;

  NutritionList({super.key, required this.nutritionJSON}) {
    nutritionJSON.forEach((element) {
      if (nutritionList.length > 0) nutritionList.add(Divider());
      nutritionList
          .add(Nutrition(name: element["name"], value: element["value"]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: nutritionList,
    );
  }
}
