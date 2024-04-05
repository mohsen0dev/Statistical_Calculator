import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_model.dart';

class ProbabilityStatisticsController extends GetxController {
  ProbabilityStatisticsModel probabilityrModel = ProbabilityStatisticsModel();
  RxInt numberData = 0.obs;
  List<double> addInputDeta = [];
  RxBool selectedDarkLight = false.obs;
  RxBool showResultPage = false.obs;
  TextEditingController textController = TextEditingController();
  late String L, R, K;
  List<List<String>> arryDatatable = [];

  void backSpace() {
    textController.text = probabilityrModel.backSpace(textController);
  }

  void clearButton() {
    probabilityrModel.clearButton();
    textController.text = '';
    addInputDeta = [];
    numberData.value = 0;
  }

  void resulltButton() {
    probabilityrModel.inputArryData = addInputDeta;
    dynamic values = probabilityrModel.resulltButton(numberData.toInt());
    K = values[0];
    L = values[1];
    R = values[2];
    arryDatatable = values[3];
    showResultPage.value = true;
  }

  void numberButtons(String name) {
    textController.text +=
        probabilityrModel.numberButtons(name, textController);
  }

  void addDataButton() {
    addInputDeta.add(double.parse(textController.text.trim()));
    numberData += 1;
    probabilityrModel.hasDecimal = false;
    textController.text = '';
  }
}
