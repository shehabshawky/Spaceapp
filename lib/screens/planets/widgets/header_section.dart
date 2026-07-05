import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: .circular(24),
          child: Image.asset(
            "assets/images/Rectangle.png",
            width: double.infinity,
            height: 250,
            fit: .cover,
          ),
        ),
        Container(
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black54, Colors.black87],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
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
        ),
      ],
    );
  }
}
