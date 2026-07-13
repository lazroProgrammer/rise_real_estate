import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/screens/onboarding/onboarding_3.dart';
import 'package:rise_real_estate/auth/widgets/buttons/back_button.dart';
import 'package:rise_real_estate/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/logo_small.dart';
import 'package:rise_real_estate/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/auth/widgets/text/title_text.dart';

class Onboarding2 extends StatelessWidget {
  const Onboarding2({super.key});

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
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            titleText("Fast sell your property in just "),
                            titlePrimary("one click"),
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
              Spacer(flex: 36),
              Expanded(
                flex: 500,
                child: Stack(
                  children: [
                    Image.asset("assets/onboarding/image2.png"),
                    Positioned(
                      left: 0,
                      right: 0,
                      bottom: MediaQuery.of(context).size.height * 0.05,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(flex: 32),
                            BackButtonWidget(),
                            SizedBox(width: 16),
                            Expanded(
                              flex: 233,
                              child: PrimaryButton(
                                text: "Next",
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Onboarding3(),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Spacer(flex: 40),
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
