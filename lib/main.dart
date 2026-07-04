import 'package:flutter/material.dart';
import 'package:spaceapp/homescreen/home_screen.dart';
import 'package:spaceapp/planetsscreen/planet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: HomeScreen.name,
      routes: {
        HomeScreen.name: (context) => HomeScreen(),
        PlanetScreen.name: (context) => PlanetScreen(),
      },
    );
  }
}
