import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';

class CustomShapeCircle extends StatelessWidget {
  const CustomShapeCircle({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(
        height: 10,
        width: 10,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: AppColors.gradientColor,
        ),
      ),
    );
  }
}
