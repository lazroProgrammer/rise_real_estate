import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/widgets/buttons/login_button.dart';
import 'package:rise_real_estate/auth/widgets/or_divider.dart';

class OrPartWidget extends StatelessWidget {
  const OrPartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrDivider(),
        SizedBox(height: 22),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 10,
          children: [
            Expanded(child: LoginButton(type: "google")),
            Expanded(child: LoginButton(type: "facebook")),
          ],
        ),
        SizedBox(height: 30),
      ],
    );
  }
}
