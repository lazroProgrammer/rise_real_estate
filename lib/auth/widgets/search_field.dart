import 'package:flutter/material.dart';

class TextFieldStyled extends StatelessWidget {
  const TextFieldStyled({super.key, required this.icon, required this.text});
  final IconData icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.blueGrey[800]),
          hintText: text,
          contentPadding: EdgeInsets.symmetric(vertical: 20),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
