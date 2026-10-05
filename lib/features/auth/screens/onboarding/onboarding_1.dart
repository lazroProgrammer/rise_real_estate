import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/auth/screens/onboarding/onboarding_2.dart';
import 'package:rise_real_estate/features/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/features/auth/widgets/logo_small.dart';
import 'package:rise_real_estate/features/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/features/auth/widgets/text/title_text.dart';

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
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LogoSmall(),
                    ElevatedButton(onPressed: () {}, child: Text("Skip")),
                  ],
                ),
              ),
              Spacer(flex: 30),

              Align(
                alignment: AlignmentGeometry.centerLeft,
                child: SizedBox(
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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(flex: 93),
                            Expanded(
                              flex: 190,
                              child: PrimaryButton(
                                text: "Next",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Onboarding2(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Spacer(flex: 93),
                          ],
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
