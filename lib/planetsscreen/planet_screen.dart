import 'package:flutter/material.dart';
import 'package:spaceapp/commponent/bottom_nav_bar.dart';
import 'package:spaceapp/core/colors/colors.dart';

class PlanetScreen extends StatelessWidget {
  static final name = "Planetscreen";
  const PlanetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            const Color.fromARGB(255, 255, 30, 30).withOpacity(0.45),
            BlendMode.darken,
          ),
          image: AssetImage("assets/images/rectangle.png"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavBar(text: "Explore", nav: () {}),
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
