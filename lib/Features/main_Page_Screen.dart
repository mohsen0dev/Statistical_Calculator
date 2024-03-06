import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_page_view.dart';
import '../Core/constants/app_bar.dart';
import '../Core/constants/color_app.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.gery1,
        appBar: const CustomSelectionAppBar(),
        body: CustomPageView(
          backgroundColor: AppColors.gery1,
        ),
      ),
    );
  }
}
