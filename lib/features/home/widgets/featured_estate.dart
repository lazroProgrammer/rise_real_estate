import 'package:flutter/material.dart';

class FeaturedEstate extends StatelessWidget {
  const FeaturedEstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 290,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.grey[100],

        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 140,
            width: 140,
            child: Stack(
              children: [
                Image.asset("assets/home/apartment.png", fit: BoxFit.cover),
                Positioned(
                  top: 8,
                  left: 8,
                  child: IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      radius: 13,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.white,
                        size: 11,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 8,
                  left: 8,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF234F68),
                      fixedSize: const Size(64, 28),
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Apartment",
                      style: TextStyle(
                        fontSize: 10,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Sky Dandelions Apartment",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 6, 47, 109),
                    fontSize: 14,
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
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.location_on, color: Color(0xFF234F68)),
                    Text(
                      "Jakarta, Indonesia",
                      style: TextStyle(color: Colors.blueGrey, fontSize: 10),
                    ),
                  ],
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "\$ 290",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF234F68),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text: "/month",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color(0xFF234F68),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
