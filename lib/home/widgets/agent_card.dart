import 'package:flutter/material.dart';

class AgentCard extends StatelessWidget {
  const AgentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 47,
            child: Image.asset("assets/home/avatar/5.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6.0),
            child: Text(
              "Amanda",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16),
              Text(
                "4.9",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 4),
              Icon(Icons.home, color: Color(0xFF234F68), size: 16),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "112 ",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: "Sold",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
