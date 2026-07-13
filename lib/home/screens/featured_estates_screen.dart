import 'package:flutter/material.dart';

class FeaturedEstatesScreen extends StatelessWidget {
  const FeaturedEstatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(""),
                  Column(children: [Image.asset(""), Image.asset("")]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
