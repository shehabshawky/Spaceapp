import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Text(
                "Explore",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: .bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 103),
          SizedBox(
            width: double.infinity,
            child: Text(
              "Which planet\nWould you like to explore?",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: .bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
