import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_page_view.dart';
import '../Core/constants/app_bar.dart';
import 'package:get/get.dart';
import '../Core/constants/color_app.dart';
import '../Core/widgets/controller/custom_appbar_controller.dart';
import 'calculator/calculator_view.dart';
import 'probability_statistics/probability_statistics_view.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});
  final SelectionModeAppBar = Get.put(CustomAppbarController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.gery1,
        appBar: const CustomSelectionAppBar(),
        body: CustomPageView(backgroundColor: AppColors.gery1),
      ),
    );
  }
}
