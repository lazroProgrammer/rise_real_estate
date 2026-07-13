import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/screens/login/login_screen.dart';
import 'package:rise_real_estate/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/or_part_widget.dart';
import 'package:rise_real_estate/auth/widgets/register_msg.dart';
import 'package:rise_real_estate/auth/widgets/text/title_text.dart';

class LoginIntroScreen extends StatelessWidget {
  const LoginIntroScreen({super.key});
  static const images = [
    "assets/login/1.png",
    "assets/login/2.png",
    "assets/login/3.png",
    "assets/login/4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.44,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: images.length,
                  itemBuilder: (context, index) =>
                      Image.asset(images[index], fit: BoxFit.cover),
                ),
              ),
              Spacer(flex: 53),

              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text.rich(
                  TextSpan(
                    children: [
                      titleText("Ready to "),
                      titlePrimary("explore?"),
                    ],
                  ),
                ),
              ),
              Spacer(flex: 51),

              Center(
                child: PrimaryButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  text: "Continue with Email",
                ),
              ),
              Spacer(flex: 41),

              OrPartWidget(),
              Spacer(flex: 35),
              RegisterMsg(),
            ],
          ),
        ),
      ),
    );
  }
}
