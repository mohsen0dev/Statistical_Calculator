import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_buttons.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_controller.dart';

class CalculatorModel {
  var calculatorControl = Get.put(CalculatorController());
  late CustomButtons;

  void backSpace() {
    if (calculatorControl.textController.text.isNotEmpty) {
      String currentValue = calculatorControl.textController.text;
      calculatorControl.textController.text =
          currentValue.substring(0, currentValue.length - 1);
    }
  }

  void clearButton() {
    calculatorControl.textController.text = '';
  }

  void resulltButton() {}
  void numberOperatorButtons() {
    print('1');
    if (customButtons.name != '=' && customButtons.name != 'C') {
      if (calculatorControl.textController.text.isEmpty) {
        calculatorControl.textController.text = customButtons.name;
      } else {
        String currentValue = calculatorControl.textController.text;
        String newValue = currentValue + customButtons.name;
        calculatorControl.textController.text = newValue;
      }
    }
  }

  void clearHistoryButton() {}
}
