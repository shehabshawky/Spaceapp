import 'package:flutter/material.dart';
import 'package:spaceapp/core/colors/colors.dart';
import 'package:spaceapp/screens/planetdetalis/widgits/detail_header_section.dart';
import 'package:spaceapp/screens/planetdetalis/widgits/detelis_section.dart';

class PlanetDetelisScreen extends StatelessWidget {
  static final String name = "PlanetDetlisScreen";
  const PlanetDetelisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(children: [DetailHeaderSection(), DetelisSection()]),
      ),
    );
  }
}
