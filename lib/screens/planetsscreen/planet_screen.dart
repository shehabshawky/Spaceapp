import 'package:flutter/material.dart';
import 'package:spaceapp/commponent/bottom_nav_bar.dart';
import 'package:spaceapp/core/colors/colors.dart';
import 'package:spaceapp/screens/planetsscreen/widgets/header_section.dart';

class PlanetScreen extends StatelessWidget {
  static final name = "Planetscreen";
  const PlanetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: MyColors.primaryColor,
        bottomNavigationBar: BottomNavBar(text: "Explore", nav: () {}),
        body: Column(crossAxisAlignment: .start, children: [HeaderSection()]),
      ),
    );
  }
}
