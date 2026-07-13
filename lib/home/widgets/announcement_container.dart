import 'package:flutter/material.dart';

class AnnouncementContainer extends StatelessWidget {
  const AnnouncementContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: 270,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(25),
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/home/halo.png", fit: BoxFit.cover),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Column(
            children: [
              Text(
                "Special\n Sale!",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Text(
                "All discount up to 60%",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 56,
              width: 90,
              decoration: BoxDecoration(
                color: Color(0xFF234F68),
                borderRadius: BorderRadius.only(topRight: Radius.circular(16)),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
