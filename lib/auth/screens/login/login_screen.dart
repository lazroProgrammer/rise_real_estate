import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/screens/login/code_screen.dart';
import 'package:rise_real_estate/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/or_part_widget.dart';
import 'package:rise_real_estate/auth/widgets/register_msg.dart';
import 'package:rise_real_estate/auth/widgets/terms_password_row.dart';
import 'package:rise_real_estate/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/auth/widgets/text/title_text.dart';
import 'package:rise_real_estate/auth/widgets/text_Field_styled.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [Image.asset("assets/login/image.png"), BackButton()],
              ),
              SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  children: [titleText("Let's "), titlePrimary("Sign in")],
                ),
              ),
              Spacer(flex: 34),
              Desc(text: "quis nostrud exercitation ullamco laboris nisi ut"),
              Spacer(flex: 34),
              TextFieldStyled(text: "Email", icon: Icons.email_outlined),
              TextFieldStyled(text: "Password", icon: Icons.password_outlined),
              TermsPasswordRow(),
              Spacer(flex: 42),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(flex: 48),
                  Expanded(
                    flex: 278,
                    child: PrimaryButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => CodeScreen()),
                        );
                      },
                      text: "Login",
                    ),
                  ),
                  Spacer(flex: 48),
                ],
              ),

              Spacer(flex: 112),
              OrPartWidget(),
              Spacer(flex: 92),
              RegisterMsg(),
            ],
          ),
        ),
      ),
    );
  }
}
