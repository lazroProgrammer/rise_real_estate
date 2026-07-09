import 'package:flutter/material.dart';

TextSpan titleText(String text) {
  return TextSpan(text: text, style: TextStyle(fontSize: 25));
}

TextSpan titlePrimary(String text) {
  return TextSpan(
    text: text,
    style: TextStyle(
      fontSize: 25,
      color: Color(0xFF204D6C),
      fontWeight: FontWeight.w900,
    ),
  );
}
