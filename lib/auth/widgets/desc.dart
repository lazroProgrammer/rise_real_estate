import 'package:flutter/material.dart';

class Desc extends StatelessWidget {
  const Desc({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 14));
  }
}
