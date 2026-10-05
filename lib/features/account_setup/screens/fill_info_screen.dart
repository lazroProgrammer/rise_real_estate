import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/features/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/features/auth/widgets/text/title_text.dart';
import 'package:rise_real_estate/features/auth/widgets/text_Field_styled.dart';
import 'package:rise_real_estate/features/home/screens/home_screen.dart';

class FillInfoScreen extends StatelessWidget {
  const FillInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  ElevatedButton(onPressed: () {}, child: Text("skip")),
                ],
              ),
              Spacer(flex: 51),
              Text.rich(
                TextSpan(
                  children: [
                    titleText("Fill your "),
                    titlePrimary("information \n"),
                    titleText("below"),
                  ],
                ),
              ),
              Spacer(flex: 20),
              Desc(text: "You can edit this later on your account setting."),
              Spacer(flex: 50),
              Center(
                child: CircleAvatar(
                  radius: 60,
                  child: Icon(Icons.person_2, size: 80),
                ),
              ),
              Spacer(flex: 30),
              TextFieldStyled(icon: Icons.person_outline, text: "Full name"),
              TextFieldStyled(icon: Icons.email_outlined, text: "Email"),
              TextFieldStyled(
                icon: Icons.phone_outlined,
                text: "mobile number",
              ),
              Spacer(flex: 32),

              Center(
                child: PrimaryButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
                      (route) => false,
                    );
                  },
                  text: "Next",
                ),
              ),
              Spacer(flex: 32),
            ],
          ),
        ),
      ),
    );
  }
}
