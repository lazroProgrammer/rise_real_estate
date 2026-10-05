import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/auth/widgets/text/desc.dart';

class LocationDetailContainer extends StatelessWidget {
  const LocationDetailContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "Location detail",
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF204D6C),
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: Icon(Icons.location_on_outlined),
              ),
              Desc(
                text: "Srengseng, Kembangan, West Jakarta City, Jakarta 11630",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
