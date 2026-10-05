import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/auth/screens/login/faq_screen.dart';

class TermsPasswordRow extends StatelessWidget {
  const TermsPasswordRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => FaqScreen()));
          },
          child: Text("Terms of service"),
        ),
        TextButton(onPressed: () {}, child: Text("Show password")),
      ],
    );
  }
}
