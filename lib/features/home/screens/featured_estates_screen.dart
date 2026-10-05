import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rise_real_estate/features/auth/widgets/search_field.dart';
import 'package:rise_real_estate/features/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/features/auth/widgets/text/title_text.dart';
import 'package:rise_real_estate/features/home/widgets/estate_card.dart';

class FeaturedEstatesScreen extends StatelessWidget {
  const FeaturedEstatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.app_settings_alt),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 6,
                children: [
                  Expanded(
                    flex: 220,
                    child: Image.asset("assets/home/featured/1.png"),
                  ),
                  Expanded(
                    flex: 133,
                    child: Column(
                      spacing: 4,
                      children: [
                        Image.asset("assets/home/featured/2.png"),
                        Image.asset("assets/home/featured/3.png"),
                      ],
                    ),
                  ),
                ],
              ),
              Text.rich(
                TextSpan(
                  children: [titleText("Add your "), titlePrimary("location")],
                ),
              ),
              SizedBox(height: 20),
              Desc(text: "You can edit this later on your account setting."),
              SizedBox(height: 25),
              SearchField(text: "Search in Featured Estates"),
              SizedBox(height: 25),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "70 ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Color(0xFF234F68),
                            ),
                          ),
                          TextSpan(
                            text: "estates",
                            style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFF234F68),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Container(
                    //   decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                    // )
                  ],
                ),
              ),

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
          ),
        ),
      ),
    );
  }
}
