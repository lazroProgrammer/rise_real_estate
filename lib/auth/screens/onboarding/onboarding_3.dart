import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/screens/login/login_intro_screen.dart';
import 'package:rise_real_estate/auth/widgets/back_button.dart';
import 'package:rise_real_estate/auth/widgets/desc.dart';
import 'package:rise_real_estate/auth/widgets/logo_small.dart';
import 'package:rise_real_estate/auth/widgets/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/title_text.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, bottom: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogoSmall(),
                    ElevatedButton(onPressed: () {}, child: Text("Skip")),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.65,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          titleText("Find "),
                          titlePrimary("perfect choice "),
                          titleText("for your future house"),
                        ],
                      ),
                    ),
                    SizedBox(height: 12),
                    Desc(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed.",
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Stack(
                children: [
                  Image.asset("assets/onboarding/image3.png"),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: MediaQuery.of(context).size.height * 0.05,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BackButtonWidget(),
                          SizedBox(width: 16),
                          PrimaryButton(
                            text: "Next",
                            action: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginIntroScreen(),
                                ),
                              );
                            },
                          ),
                          SizedBox(width: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
