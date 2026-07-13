import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  const Tag({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 17.5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(text),
    );
  }
}
