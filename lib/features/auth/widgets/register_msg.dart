import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/auth/screens/login/register_screen.dart';

class RegisterMsg extends StatelessWidget {
  const RegisterMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account?"),
        TextButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => RegisterScreen()));
          },
          child: Text("Register"),
        ),
      ],
    );
  }
}
