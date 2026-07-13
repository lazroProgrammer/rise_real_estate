import 'package:flutter/material.dart';
import 'package:rise_real_estate/home/widgets/featured_estate.dart';
import 'package:rise_real_estate/home/widgets/section_row.dart';

class FeaturedEstates extends StatelessWidget {
  const FeaturedEstates({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionRow(
          text: "Featured Estates",

          buttonText: "View all",
          onPressed: () {},
        ),
        SizedBox(height: 20),
        FeaturedEstate(),
        SizedBox(height: 35),
      ],
    );
  }
}
