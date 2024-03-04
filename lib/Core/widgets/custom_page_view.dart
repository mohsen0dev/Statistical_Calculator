import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_view.dart';

class CustomPageView extends StatelessWidget {
  final selectionModeAppBar = Get.put(CustomAppbarController());
  final allwidget1 = CalculatorView1();
  final allwidget2 = CalculatorView2();
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
    // final SelectionModeAppBar = Get.put(CustomAppbarController());
    return GetBuilder<CustomAppbarController>(builder: (controller) {
      print('test');
      return Scaffold(
          backgroundColor: AppColors.gery1,
          body: Obx(() => PageView.builder(
              reverse: true,
              controller: pageViewClr,
              onPageChanged: (int value) {
                selectionModeAppBar.selectedSection.value = value;
              },
              physics: const BouncingScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    decoration: BoxDecoration(color: backgroundColor),
                    child: allwidget1.all,
                  );
                } else if (index == 1) {
                  return Container(
                    decoration: BoxDecoration(color: backgroundColor),
                    child: allwidget2.all,
                  );
                }
                return null;
              })));
    });
  }
}
