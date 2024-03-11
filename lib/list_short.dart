import 'package:flutter/material.dart';

class ListShort extends StatelessWidget {
  final String normalText;

  const ListShort({super.key, required this.normalText});

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
                TextSpan(text: this.normalText)
              ]),
        ));
  }
}
