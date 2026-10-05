import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.blueGrey[800]),
          hintText: text,
          contentPadding: EdgeInsets.symmetric(vertical: 20),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
