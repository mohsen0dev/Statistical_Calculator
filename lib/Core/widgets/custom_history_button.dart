import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_controller.dart';

class CustomHistoryButton extends StatelessWidget {
  final CalculatorController calculatorClr;
  const CustomHistoryButton({super.key, required this.calculatorClr});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Visibility(
              visible: calculatorClr.pressedButtonShowHistory.value == true
                  ? true
                  : false,
              child: Container(
                width: 44,
                height: 32,
                decoration: BoxDecoration(
                    color: AppColors.gery6,
                    borderRadius: BorderRadius.circular(
                        AppSize.borderRadiusButtonShowHistory)),
                child: const Icon(
                  Icons.access_time_sharp,
                  size: 30,
                  color: AppColors.gery3,
                ),
              ),
            ),
            Visibility(
              visible: calculatorClr.pressedButtonShowHistory.value == false
                  ? true
                  : false,
              child: const Row(
                children: [
                  Icon(
                    Icons.access_time_sharp,
                    size: 35,
                    color: AppColors.secondary1,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
