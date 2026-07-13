import 'package:flutter/material.dart';

class SectionRow extends StatelessWidget {
  const SectionRow({
    super.key,
    required this.text,
    required this.buttonText,
    required this.onPressed,
  });
  final String text;
  final String buttonText;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF234F68),
            fontWeight: FontWeight.bold,
          ),
        ),
        TextButton(onPressed: onPressed, child: Text(buttonText)),
      ],
    );
  }
}
