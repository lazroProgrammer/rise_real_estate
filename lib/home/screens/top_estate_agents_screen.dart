import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rise_real_estate/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/auth/widgets/text/title_text.dart';
import 'package:rise_real_estate/home/widgets/agent_card.dart';

class TopEstateAgentsScreen extends StatelessWidget {
  const TopEstateAgentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackButton(),
              Text.rich(
                TextSpan(
                  children: [titleText("Add your "), titlePrimary("location")],
                ),
              ),
              Desc(text: "You can edit this later on your account setting."),
              SizedBox(height: 25),
              MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 7,
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (_, i) => AgentCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
