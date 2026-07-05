import 'package:flutter/material.dart';
import 'package:spaceapp/commponent/bottom_nav_bar.dart';
import 'package:spaceapp/core/colors/colors.dart';
import 'package:spaceapp/screens/planetsscreen/planet_screen.dart';

class HomeScreen extends StatelessWidget {
  static final name = "Homescreen";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.primaryColor,
        image: DecorationImage(
          image: AssetImage("assets/images/home.png"),
          fit: .cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavBar(
          text: "Explore",
          nav: () {
            Navigator.pushNamedAndRemoveUntil(context, PlanetScreen.name, (route)=> false);
          },
        ),
        body: Column(
          mainAxisAlignment: .center,
          crossAxisAlignment: .start,
          children: [
            Padding(
              padding: .only(left: 16),
              child: Text(
                "Explore\nThe\nUniverse",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: .w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
