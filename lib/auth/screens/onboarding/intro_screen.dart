import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/screens/onboarding/onboarding_1.dart';
import 'package:rise_real_estate/auth/widgets/buttons/primary_button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/onboarding/intro.png"),
          Positioned.fill(
            child: Container(color: const Color(0xFF21628A).withOpacity(0.8)),
          ),
          Column(
            children: [
              Spacer(flex: 235),
              Expanded(
                flex: 256,
                child: Stack(
                  children: [
                    Center(child: Image.asset("assets/logo.png")),
                    Padding(
                      padding: const EdgeInsets.only(top: 240.0),
                      child: Center(
                        child: Text(
                          "Rise Real Estate",
                          style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 192),
              ButtonRow(),
              Spacer(flex: 25),
              Center(
                child: Text(
                  "Made with love",
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
              Spacer(flex: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class ButtonRow extends StatelessWidget {
  const ButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(flex: 93),
        Expanded(
          flex: 190,
          child: SizedBox(
            child: PrimaryButton(
              height: 54,
              text: "Let's start",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Onboarding1()),
                );
              },
            ),
          ),
        ),
        Spacer(flex: 93),
      ],
    );
  }
}
