import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 18,
        color: Color(0xFF234F68),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
