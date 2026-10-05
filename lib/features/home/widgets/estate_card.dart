import 'package:flutter/material.dart';

class EstateCard extends StatelessWidget {
  const EstateCard({super.key, required this.imageNum});
  final int imageNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("assets/home/estates/$imageNum.png"),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  "Wings Tower",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF234F68),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Text(
                      "4.9",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(Icons.location_on, color: Color(0xFF234F68)),
                    Text(
                      "Jakarta, Indonesia",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
