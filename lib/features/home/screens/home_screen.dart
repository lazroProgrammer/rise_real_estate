import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/auth/widgets/search_field.dart';
import 'package:rise_real_estate/features/home/widgets/announcement_container.dart';
import 'package:rise_real_estate/features/home/widgets/home_screen/featured_estates.dart';
import 'package:rise_real_estate/features/home/widgets/home_screen/nearby_estates.dart';
import 'package:rise_real_estate/features/home/widgets/home_screen/top_estate_agents.dart';
import 'package:rise_real_estate/features/home/widgets/home_screen/top_locations.dart';
import 'package:rise_real_estate/features/home/widgets/tag.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const tags = ["All", "House", "Apartment", "House"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsetsGeometry.all(8),
          child: ListView(
            children: [
              SizedBox(height: 35),
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Hey, ", style: TextStyle(fontSize: 25)),
                    TextSpan(
                      text: "Jonathan!\n",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color(0xFF234F68),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    TextSpan(
                      text: "Let's start exploring",
                      style: TextStyle(fontSize: 25),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              SearchField(text: "Search House, Apartment, etc"),
              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(left: 10),
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tags.length,
                  itemBuilder: (context, index) => Align(
                    alignment: Alignment.centerLeft,
                    child: Tag(text: tags[index]),
                  ),
                ),
              ),
              SizedBox(height: 35),

              AnnouncementContainer(),

              FeaturedEstates(),

              TopLocations(),

              TopEstateAgents(),

              NearbyEstates(),
            ],
          ),
        ),
      ),
    );
  }
}
