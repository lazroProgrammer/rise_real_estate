import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/home/screens/top_estate_agents_screen.dart';
import 'package:rise_real_estate/features/home/widgets/estate_agent.dart';
import 'package:rise_real_estate/features/home/widgets/section_row.dart';

class TopEstateAgents extends StatelessWidget {
  const TopEstateAgents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionRow(
          text: "Top Estate Agent",

          buttonText: "Explore",
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const TopEstateAgentsScreen(),
              ),
            );
          },
        ),
        SizedBox(height: 20),

        Container(
          margin: EdgeInsets.only(left: 10),
          height: 90,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.centerLeft,
              child: EstateAgent(index: index + 1),
            ),
          ),
        ),

        SizedBox(height: 35),
      ],
    );
  }
}
