import 'package:flutter/material.dart';

class DetelisSection extends StatelessWidget {
  const DetelisSection({super.key});

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
            "Earth is the only known planet in the universe that supports life. Its unique combination of factors, including liquid water, a breathable atmosphere, and a suitable distance from the Sun, has created the ideal conditions for the development of complex organisms. Earth's magnetic field protects it from harmful solar radiation, and its atmosphere helps to regulate temperature and weather patterns.",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 15),
          Text(
            "Distance from Sun (km) : 149598026",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Length of Day (hours) : 23.93",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Orbital Period (Earth years) : 1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Radius (km) : 6371",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Mass (kg) : 5.972 X 10²⁴",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Gravity (m/s²) : 9.81",
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: .bold,
            ),
          ),
          SizedBox(height: 15),
          Text(
            "Surface Area (km²) : 5.10 x 10⁸",
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
