import 'package:flutter/material.dart';

class EstateTypeContainer extends StatelessWidget {
  const EstateTypeContainer({super.key, required this.data});

  final Map data;

  @override
  Widget build(BuildContext context) {
    final title = data["title"]!;
    final path = data["path"]!;
    final isEnabled = data["isEnabled"]!;
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isEnabled ? const Color(0xff1F4C6B) : Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: AspectRatio(
                  aspectRatio: 0.9, // keeps the image ratio
                  child: Image.asset(
                    path,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: CircleAvatar(
                  radius: 16,
                  backgroundColor: isEnabled ? Colors.green : Colors.white,
                  child: Center(
                    child: Icon(
                      Icons.check,
                      size: 18,
                      color: isEnabled ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
              right: 8,
              bottom: 8,
              left: 8,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: isEnabled ? Colors.white : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
