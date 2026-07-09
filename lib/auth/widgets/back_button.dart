import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      icon: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
        child: Icon(Icons.arrow_back),
      ),
    );
  }
}
