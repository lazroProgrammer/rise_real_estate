import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:rise_real_estate/account_setup/screens/payment_method_screen.dart';
import 'package:rise_real_estate/account_setup/widgets/estate_type_container.dart';
import 'package:rise_real_estate/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/auth/widgets/text/title_text.dart';

class RealEstateTypeScreen extends StatelessWidget {
  const RealEstateTypeScreen({super.key});

  static const data = [
    {
      "title": "Apartment",
      "path": "assets/account_setup/apartment.png",
      "isEnabled": true,
    },
    {
      "title": "Villa",
      "path": "assets/account_setup/villa.png",
      "isEnabled": true,
    },
    {
      "title": "House",
      "path": "assets/account_setup/house.png",
      "isEnabled": false,
    },
    {
      "title": "Cottage",
      "path": "assets/account_setup/cottage.png",
      "isEnabled": false,
    },
    {
      "title": "House",
      "path": "assets/account_setup/house.png",
      "isEnabled": false,
    },
    {
      "title": "Cottage",
      "path": "assets/account_setup/cottage.png",
      "isEnabled": false,
    },
  ];

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
                    titleText("Select your preferable \n"),
                    titlePrimary("real estate type"),
                  ],
                ),
              ),
              Spacer(flex: 20),
              Desc(text: "You can edit this later on your account setting."),
              Spacer(flex: 33),
              Expanded(
                flex: 517,
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  itemCount: data.length,
                  itemBuilder: (_, i) => EstateTypeContainer(data: data[i]),
                ),
              ),
              Center(
                child: PrimaryButton(
                  action: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PaymentMethodScreen(),
                      ),
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
