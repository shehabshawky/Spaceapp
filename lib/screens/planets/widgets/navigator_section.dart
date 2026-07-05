import 'package:flutter/material.dart';
import 'package:spaceapp/core/colors/colors.dart';

class NavigatorSection extends StatelessWidget {
  final String planetname;
   final VoidCallback back;
   final VoidCallback forward;
  const NavigatorSection({super.key, required this.planetname, required this.back, required this.forward});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          IconButton(
            onPressed: back,
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(MyColors.sacendaryColor),
              padding: WidgetStatePropertyAll(.all(14)),
            ),
          ),
          Text(
            planetname,
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: .bold,
            ),
          ),
          IconButton(
            onPressed: forward,
            icon: Icon(Icons.arrow_forward),
            color: Colors.white,
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(MyColors.sacendaryColor),
              padding: WidgetStatePropertyAll(.all(14)),
            ),
          ),
        ],
      ),
    );
  }
}
