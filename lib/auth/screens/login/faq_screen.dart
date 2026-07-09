import 'package:flutter/material.dart';
import 'package:rise_real_estate/auth/widgets/desc.dart';
import 'package:rise_real_estate/auth/widgets/faq_action.dart';
import 'package:rise_real_estate/auth/widgets/text_Field_styled.dart';
import 'package:rise_real_estate/auth/widgets/title_text.dart';

class FaqScreen extends StatelessWidget {
  const FaqScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              Spacer(flex: 50),
              Text.rich(
                TextSpan(
                  children: [
                    titlePrimary("FAQ "),
                    titleText("& "),
                    titlePrimary("Support"),
                  ],
                ),
              ),
              Spacer(flex: 20),
              Desc(text: "Find answer to your problem using this app."),
              Spacer(flex: 35),
              FaqAction(text: "Visit our website", icon: Icons.web_outlined),
              Divider(),
              FaqAction(text: "Email us", icon: Icons.email_outlined),
              Divider(),
              FaqAction(
                text: "Terms of service",
                icon: Icons.file_copy_outlined,
              ),
              Spacer(flex: 35),
              TextFieldStyled(text: "Try find \"how to\"", icon: Icons.search),
              Spacer(flex: 20),
              Container(color: Colors.grey, height: 50),
              Spacer(flex: 20),
              Expanded(
                flex: 233,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "What is Rise Real Estate?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 11, 14, 53),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add, color: Color(0xFF8BC83D)),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Why choose buy in Rise?",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 11, 14, 53),
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove, color: Color(0xFF8BC83D)),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(31, 58, 61, 80),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut. aliquip ex ea commodo consequat. Duis aute irure dolor.",
                        style: TextStyle(fontSize: 12),
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
