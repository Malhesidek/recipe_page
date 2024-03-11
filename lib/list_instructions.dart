import 'package:flutter/material.dart';
import 'package:recipe_page/text_instructions.dart';

class ListInstructions extends StatelessWidget {
  List<Widget> instructions = [];
  List inputData;

  ListInstructions({super.key, required this.inputData}) {
    inputData.forEach((element) {
      instructions.add(TextInstructions(
          number: instructions.length + 1,
          boldText: element["title"],
          normalText: element["text"]));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: this.instructions,
    );
  }
}
