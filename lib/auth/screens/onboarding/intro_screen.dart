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
          Expanded(child: Container(color: Color(0xFF21628A).withOpacity(0.8))),
          Column(
            children: [
              Expanded(
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

              PrimaryButton(
                text: "Let's start",
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Onboarding1()),
                  );
                },
              ),
              SizedBox(
                height: 75,
                child: Center(
                  child: Text(
                    "Made with love",
                    style: TextStyle(fontSize: 10, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
