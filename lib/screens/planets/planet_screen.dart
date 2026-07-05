import 'package:flutter/material.dart';
import 'package:spaceapp/commponent/bottom_nav_bar.dart';
import 'package:spaceapp/core/colors/colors.dart';
import 'package:spaceapp/models/planet.dart';
import 'package:spaceapp/screens/planetdetalis/planet_detelis_screen.dart';
import 'package:spaceapp/screens/planets/widgets/header_section.dart';
import 'package:spaceapp/screens/planets/widgets/image_section.dart';
import 'package:spaceapp/screens/planets/widgets/navigator_section.dart';
import 'package:spaceapp/data/planets_data.dart';

class PlanetScreen extends StatefulWidget {
  static final name = "Planetscreen";

  const PlanetScreen({super.key});

  @override
  State<PlanetScreen> createState() => _PlanetScreenState();
}

class _PlanetScreenState extends State<PlanetScreen> {
  int counter = 0;
  Planet planet = planets[0];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primaryColor,
      bottomNavigationBar: BottomNavBar(
        text: "Explore ${planet.name}",
        nav: () {
          Navigator.pushNamed(context, PlanetDetelisScreen.name);
        },
      ),
      body: Column(
        crossAxisAlignment: .start,
        children: [
          HeaderSection(),
          ImageSection(imagePath: planet.image),
          NavigatorSection(
            planetname: planet.name,
            back: () {
              setState(() {
                if (counter == 0) {
                  counter = planets.length - 1;
                  planet = planets[counter];
                } else {
                  counter--;
                  planet = planets[counter];
                }
              });
            },
            forward: () {
              setState(() {
                if (counter == planets.length - 1) {
                  counter = 0;
                  planet = planets[counter];
                } else {
                  counter++;
                  planet = planets[counter];
                }
              });
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
