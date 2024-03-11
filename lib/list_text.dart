import 'package:flutter/material.dart';

class ListText extends StatelessWidget {
  final String boldText;
  final String normalText;

  const ListText({super.key, required this.boldText, required this.normalText});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const Icon(
          Icons.fiber_manual_record,
          size: 10,
        ),
        title: RichText(
          text: TextSpan(
              style: const TextStyle(fontSize: 16, color: Colors.black),
              children: [
                TextSpan(
                    text: this.boldText + ' ',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: this.normalText)
              ]),
        ));
  }
}
