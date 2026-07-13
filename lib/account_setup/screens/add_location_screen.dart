import 'dart:async';

import 'package:flutter/material.dart';
import 'package:maplibre_gl/maplibre_gl.dart';
import 'package:rise_real_estate/account_setup/screens/real_estate_type_screen.dart';
import 'package:rise_real_estate/auth/widgets/buttons/primary_button.dart';
import 'package:rise_real_estate/auth/widgets/text/desc.dart';
import 'package:rise_real_estate/auth/widgets/text/title_text.dart';
import 'package:rise_real_estate/auth/widgets/text_Field_styled.dart';

class AddLocationScreen extends StatefulWidget {
  const AddLocationScreen({super.key});

  @override
  State<AddLocationScreen> createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<AddLocationScreen> {
  final _controller = Completer<MapLibreMapController>();
  final _initial = CameraPosition(target: LatLng(0, 0), zoom: 2);

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
                  children: [titleText("Add your "), titlePrimary("location")],
                ),
              ),
              Spacer(flex: 20),
              Desc(text: "You can edit this later on your account setting."),
              Spacer(flex: 33),
              Expanded(
                flex: 300,
                child: MapLibreMap(
                  initialCameraPosition: _initial,
                  onMapCreated: _controller.complete,
                  styleString: 'https://demotiles.maplibre.org/style.json',
                ),
              ),
              Spacer(flex: 32),
              TextFieldStyled(icon: Icons.location_on, text: "Location detail"),
              Spacer(flex: 79),
              Center(
                child: PrimaryButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => RealEstateTypeScreen(),
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
