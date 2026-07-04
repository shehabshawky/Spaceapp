import 'package:flutter/material.dart';
import 'package:spaceapp/core/colors/colors.dart';

class BottomNavBar extends StatelessWidget {
  final String text;
  final VoidCallback nav;
  const BottomNavBar({super.key, required this.text , required this.nav});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17, vertical: 22),
      padding: EdgeInsets.only(left: 26, top: 5, bottom: 5),
      decoration: BoxDecoration(
        color: MyColors.sacendaryColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: .bold,
              fontSize: 20,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: nav,
            icon: Icon(Icons.arrow_forward, size: 25, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
