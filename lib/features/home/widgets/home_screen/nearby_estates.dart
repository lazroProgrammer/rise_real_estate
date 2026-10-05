import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rise_real_estate/features/home/widgets/estate_card.dart';
import 'package:rise_real_estate/features/home/widgets/section_row.dart';

class NearbyEstates extends StatelessWidget {
  const NearbyEstates({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionRow(
          text: "Explore Nearby Estates",

          buttonText: "Explore",
          onPressed: () {},
        ),
        SizedBox(height: 20),

        MasonryGridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 7,
          itemCount: 4,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, i) => EstateCard(imageNum: i + 1),
        ),
      ],
    );
  }
}
