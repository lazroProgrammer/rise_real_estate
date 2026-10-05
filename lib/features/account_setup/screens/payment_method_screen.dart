import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/account_setup/screens/fill_info_screen.dart';
import 'package:rise_real_estate/features/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/features/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/features/auth/widgets/text/title_text.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

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
                    titleText("Add your \n"),
                    titlePrimary("payment method"),
                  ],
                ),
              ),
              Spacer(flex: 20),
              Desc(text: "You can edit this later on your account setting."),
              Spacer(flex: 33),
              Expanded(flex: 186, child: Image.asset("assets/card.png")),
              Spacer(flex: 32),
              Spacer(flex: 79),
              Center(
                child: PrimaryButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => FillInfoScreen()),
                    );
                  },
                  text: "Next",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
