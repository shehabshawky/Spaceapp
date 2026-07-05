import 'package:flutter/material.dart';

class ImageSection extends StatelessWidget {
  final String imagePath;
  const ImageSection({super.key , required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Image.asset(imagePath),
      ),
    );
  }
}
