import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_controller.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_model.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_view.dart';
import '../Core/constants/app_bar.dart';

class MainPageScreen extends StatefulWidget {
  MainPageScreen({super.key});
  final probabilityControl = Get.put(ProbabilityStatisticsController());
  final probabilityModel = Get.put(ProbabilityStatisticsModel());

  @override
  State<MainPageScreen> createState() => _MainPageScreenState();
}

class _MainPageScreenState extends State<MainPageScreen> {
  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return SafeArea(
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) {
          if (didPop) {
            return;
          } else {
            if (widget.probabilityControl.showResultPage.value == false) {
              SystemNavigator.pop();
            }
          }
        },
        child: Scaffold(
            backgroundColor: themeData.colorScheme.onSurface,
            appBar: const CustomSelectionAppBar(),
            body: Obx(
              () => widget.probabilityControl.showResultPage.value
                  ? ResultView(
                      probabilityModel: widget.probabilityModel,
                      probabilityControl: widget.probabilityControl,
                    )
                  : const ProbabilityStatisticsView(),
            )),
      ),
    );
  }
}
