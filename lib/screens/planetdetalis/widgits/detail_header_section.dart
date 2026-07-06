import 'package:flutter/material.dart';
import 'package:spaceapp/core/colors/colors.dart';
import 'package:spaceapp/models/planet.dart';

class DetailHeaderSection extends StatelessWidget {
  final Planet planet;
  const DetailHeaderSection({super.key, required this.planet});

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
          padding: const EdgeInsets.only(left: 10, top: 20, right: 20),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: .center,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    style: ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(
                        MyColors.sacendaryColor,
                      ),
                      padding: WidgetStatePropertyAll(.all(10)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: .only(right: 35),
                      child: Text(
                        planet.name,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: .bold,
                        ),
                        textAlign: .center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 39),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: .only(left: 10),
                  child: Text(
                    planet.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: .bold,
                    ),
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
