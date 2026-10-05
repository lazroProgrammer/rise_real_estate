import 'package:flutter/material.dart';

class EstateAgent extends StatelessWidget {
  const EstateAgent({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            child: Image.asset("assets/home/avatar/$index.png"),
          ),
          Text("Amanda", style: TextStyle(fontSize: 10)),
        ],
      ),
    );
  }
}
