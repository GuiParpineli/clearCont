import 'package:flutter/material.dart';

class TextSimple extends StatelessWidget {
  final String text;

  const TextSimple({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: Colors.white),
    );
  }
}
