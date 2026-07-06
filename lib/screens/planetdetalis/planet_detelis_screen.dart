import 'package:flutter/material.dart';
import 'package:spaceapp/core/colors/colors.dart';
import 'package:spaceapp/data/planets_data.dart';
import 'package:spaceapp/models/planet.dart';
import 'package:spaceapp/screens/planetdetalis/widgits/detail_header_section.dart';
import 'package:spaceapp/screens/planetdetalis/widgits/detelis_section.dart';
import 'package:spaceapp/screens/planetdetalis/widgits/model_section.dart';

class PlanetDetelisScreen extends StatelessWidget {
  static final String name = "PlanetDetlisScreen";
  final Planet planet;
  const PlanetDetelisScreen({super.key, required this.planet});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          children: [
            DetailHeaderSection(planet: planet),
            ModelSection(modelsrc: planet.image_3D),
            DetelisSection(planet: planet),
          ],
        ),
      ),
    );
  }
}
