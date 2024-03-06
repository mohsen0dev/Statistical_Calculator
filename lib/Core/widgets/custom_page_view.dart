import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_view.dart';
import '../../Features/probability_statistics/probability_statistics_view.dart';

class CustomPageView extends StatelessWidget {
  final selectionModeAppBar = Get.put(CustomAppbarController());
  final allWidgetCalculator = CalculatorView();
  final allWidgetProbabilityStatistics = ProbabilityStatisticsView();
  final Color? backgroundColor;
  final Widget? widgetsList1;
  final Widget? widgetsList2;
  CustomPageView({
    super.key,
    required this.backgroundColor,
    this.widgetsList1,
    this.widgetsList2,
  });
  final PageController pageViewClr = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.gery1,
        body: Obx(() {
          final selectedPosetion = selectionModeAppBar.selectedSection.value;
          return PageView.builder(
              reverse: true,
              controller: pageViewClr,
              onPageChanged: (int value) {
                selectionModeAppBar.selectedSection.value = value;
              },
              physics: const BouncingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                if (selectedPosetion == 0) {
                  return Container(
                    decoration: BoxDecoration(color: backgroundColor),
                    child: allWidgetCalculator.all,
                  );
                } else if (selectedPosetion == 1) {
                  return Container(
                    decoration: BoxDecoration(color: backgroundColor),
                    child: allWidgetProbabilityStatistics.all,
                  );
                }
                return null;
              });
        }));
  }
}
