import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/widgets/desc.dart';
import 'package:rise_real_estate/auth/widgets/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/terms_password_row.dart';
import 'package:rise_real_estate/auth/widgets/text_Field_styled.dart';
import 'package:rise_real_estate/auth/widgets/title_text.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 36),
              Text.rich(
                TextSpan(
                  children: [
                    titleText("Create your "),
                    titlePrimary("account"),
                  ],
                ),
              ),
              Spacer(flex: 20),
              Desc(text: "quis nostrud exercitation ullamco laboris nisi ut"),
              Spacer(flex: 50),
              TextFieldStyled(text: "Full name", icon: Icons.person_outline),
              TextFieldStyled(text: "Email", icon: Icons.email_outlined),
              TextFieldStyled(text: "Password", icon: Icons.password_outlined),
              TermsPasswordRow(),
              Spacer(flex: 24),
              Center(
                child: PrimaryButton(action: () {}, text: "Register"),
              ),
              Spacer(flex: 232),
            ],
          ),
        ),
      ),
    );
  }
}
