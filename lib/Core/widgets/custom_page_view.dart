import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_view.dart';
import '../../Features/probability_statistics/probability_statistics_view.dart';

class CustomPageView extends StatelessWidget {
  final Color? backgroundColor;
  CustomPageView({
    super.key,
    required this.backgroundColor,
  });
  final PageController pageViewClr = PageController(initialPage: 0);
  final selectionModeAppBar = Get.put(CustomAppbarController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
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
                child: CalculatorView(),
              );
            } else if (selectedPosetion == 1) {
              return Container(
                decoration: BoxDecoration(color: backgroundColor),
                child: const ProbabilityStatisticsView(),
              );
            }
            return null;
          });
    });
  }
}
