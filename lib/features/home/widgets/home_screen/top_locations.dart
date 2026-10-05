import 'package:flutter/material.dart';
import 'package:rise_real_estate/features/home/widgets/location_tag.dart';
import 'package:rise_real_estate/features/home/widgets/section_row.dart';

class TopLocations extends StatelessWidget {
  const TopLocations({super.key});

  static const locationTags = ["Bali", "jakarta", "Yogyakarta"];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionRow(
          text: "Top Locations",
          buttonText: "Explore",
          onPressed: () {},
        ),
        SizedBox(height: 20),

        Container(
          margin: EdgeInsets.only(left: 10),
          height: 60,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: locationTags.length,
            itemBuilder: (context, index) => Align(
              alignment: Alignment.centerLeft,
              child: LocationTag(text: locationTags[index], index: index + 1),
            ),
          ),
        ),

        SizedBox(height: 35),
      ],
    );
  }
}
