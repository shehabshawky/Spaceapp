import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class ModelSection extends StatefulWidget {
   final String modelsrc ;
  const ModelSection({super.key, required this.modelsrc});

  @override
  State<ModelSection> createState() => _ModelSectionState();
}

class _ModelSectionState extends State<ModelSection> {
  final Flutter3DController controller = Flutter3DController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Flutter3DViewer(
        controller: controller,
        src: widget.modelsrc,
        progressBarColor: Colors.blue,
        activeGestureInterceptor: true,
        enableTouch: true,
      ),
    );
  }
}
