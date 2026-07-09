import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:rise_real_estate/auth/widgets/title_text.dart';

class CodeScreen extends StatelessWidget {
  const CodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(flex: 36),
              Text.rich(
                TextSpan(
                  children: [titleText("Enter the "), titlePrimary("code")],
                ),
              ),
              Spacer(flex: 34),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Enter the 4 digit code that we just sent to ",
                      style: TextStyle(fontSize: 14),
                    ),
                    TextSpan(
                      text: "jonathan@email.com",
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF204D6C),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(flex: 90),
              LayoutBuilder(
                builder: (context, constraints) {
                  const spacing = 12.0;
                  final boxSize = (constraints.maxWidth - spacing * 3) / 4;

                  return Pinput(
                    length: 4,
                    separatorBuilder: (_) => const SizedBox(width: spacing),
                    defaultPinTheme: PinTheme(
                      width: boxSize,
                      height: boxSize,
                      textStyle: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  );
                },
              ),
              Spacer(flex: 224),

              Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.timer_outlined),
                      SizedBox(width: 8),
                      Text("00.21"),
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Didn't receive the OTP?"),
                  TextButton(onPressed: () {}, child: Text("Resend OTP")),
                ],
              ),
              Spacer(flex: 100),
            ],
          ),
        ),
      ),
    );
  }
}
