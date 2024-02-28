import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:segmented_button_slide/segmented_button_slide.dart';
import 'package:simple_statistical_calculator/Core/constants/app_bar.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_page_view.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.gery1,
          appBar: CustomSelectionAppBar(),
          body: Center()),
    );
  }
}
