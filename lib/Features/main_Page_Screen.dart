import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_controller.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_model.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_view.dart';
import '../Core/constants/app_bar.dart';
import '../Core/constants/color_app.dart';

class MainPageScreen extends StatelessWidget {
  const MainPageScreen({super.key});
  static var probabilityControl = Get.put(ProbabilityStatisticsController());
  static var probabilityModel = Get.put(ProbabilityStatisticsModel());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.gery1,
          appBar: const CustomSelectionAppBar(),
          body: Obx(
            () => probabilityControl.showResultPage.value
                ? ResultView(
                    probabilityModel: probabilityModel,
                    probabilityControl: probabilityControl,
                  )
                : const ProbabilityStatisticsView(),
          )),
    );
  }
}
