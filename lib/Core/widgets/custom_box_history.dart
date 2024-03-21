import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';

class CustomBoxHistory extends StatelessWidget {
  const CustomBoxHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 19, top: 6),
      child: SingleChildScrollView(
        child: Container(
          height: AppSize.boardHistoryH,
          width: AppSize.boardHistoryW,
          decoration: const BoxDecoration(
              color: AppColors.gery3,
              borderRadius: BorderRadius.all(
                  Radius.circular(AppSize.borderRadiusBoxHistory)),
              boxShadow: [BoxShadow(spreadRadius: 5, color: AppColors.gery4)]),
        ),
      ),
    );
  }
}
