import 'package:flutter/material.dart';
import 'package:spaceapp/models/planet.dart';

class DetelisSection extends StatelessWidget {
  final Planet planet;
  const DetelisSection({super.key , required this.planet});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            "About",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            planet.desc,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 15),
          Text(
            "Distance from Sun (km) : ${planet.distance_from_Sun}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Length of Day (hours) : ${planet.length_of_day}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Orbital Period (Earth years) : ${planet.orbital_period}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Radius (km) : ${planet.radius}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Mass (kg) : ${planet.mass}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Gravity (m/s²) : ${planet.gravity}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Surface Area (km²) : ${planet.surface_area}",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
