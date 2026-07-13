import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.type,
    this.onPressed,
    this.width,
    this.height = 54,
  });

  final String type;
  final VoidCallback? onPressed;
  final double? width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[100],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(child: Image.asset("assets/login/$type.png", height: 25)),
      ),
    );
  }
}
