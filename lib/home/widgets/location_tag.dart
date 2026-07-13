import 'package:flutter/material.dart';

class LocationTag extends StatelessWidget {
  const LocationTag({super.key, required this.text, required this.index});
  final String text;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: EdgeInsets.only(right: 10),
      padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8, right: 16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(
              "assets/home/locations/$index.png",
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 8),
          Text(
            text,
            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
