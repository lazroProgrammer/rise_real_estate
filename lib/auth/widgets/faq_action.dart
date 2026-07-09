import 'package:flutter/material.dart';

class FaqAction extends StatelessWidget {
  const FaqAction({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            radius: 17,
            backgroundColor: Color(0xFF1F4C6B),
            child: Icon(icon, color: Colors.white),
          ),
        ),
        Text(text, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
