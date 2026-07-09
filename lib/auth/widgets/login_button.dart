import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.type});
  final String type;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.grey[100],
        minimumSize: Size(190, 54),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Center(
        child: Image.asset(
          "assets/login/${type == "google" ? "google" : "facebook"}.png",
          height: 25,
        ),
      ),
    );
  }
}
