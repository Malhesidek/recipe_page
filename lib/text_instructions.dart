import 'package:flutter/material.dart';
import 'package:recipe_page/constants.dart';

class TextInstructions extends StatelessWidget {
  final int number;
  final String boldText;
  final String normalText;

  const TextInstructions(
      {super.key, required this.number, required this.boldText, required this.normalText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: Text('$number.', style: const TextStyle(fontSize: 22, color: kColorBrown),),
        title: RichText(
          text: TextSpan(
              style: const TextStyle(fontSize: 18, color: Colors.black),
              children: [
                TextSpan(
                    text: this.boldText + ' ',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: this.normalText)
              ]),
        ));
  }
}
