import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/screens/onboarding/onboarding_2.dart';
import 'package:rise_real_estate/auth/widgets/desc.dart';
import 'package:rise_real_estate/auth/widgets/logo_small.dart';
import 'package:rise_real_estate/auth/widgets/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/title_text.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                flex: 245,
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
                      width: MediaQuery.of(context).size.width * 0.55,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text.rich(
                            TextSpan(
                              children: [
                                titleText("Find best place to stay in "),
                                titlePrimary("good price"),
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
                  ],
                ),
              ),
              Expanded(flex: 36, child: Container()),
              Expanded(
                flex: 502,
                child: Stack(
                  children: [
                    Container(
                      child: Image.asset("assets/onboarding/image1.png"),
                    ),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: MediaQuery.of(context).size.height * 0.05,
                      child: Center(
                        child: PrimaryButton(
                          text: "Next",
                          action: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Onboarding2(),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
