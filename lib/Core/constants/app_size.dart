import 'package:flutter/material.dart';

class AppSize {
  static double setFullsizeWidth = 0;
  static double setFullsizeHeight = 0;
  static double textScaleFactor = 0;
  static const double borderRadiusButton = 9;
  static const double borderRadiusBoxHistory = 12;
  static const double borderRadiusButtonShowHistory = 7;
  static const double borderRadiusButtonClearHistory = 28;
  static const double borderRadiusresultButton = 16;
  static const double textSizeBoldButtom = 26;
  static const double textSizeMedium = 16;
  static const double dividerGeradientHeight = 10;
  static double appBarHeight = 0;
  static double boardResult = 0;
  static double boardButtons = 0;
  static double boardResultButtonsH = 0;
  static double boardResultButtonsW = 0;
  static double boardButtonsPadding = 0;
  static double boardButtonsHistoryCleanPad = 0;
  static double boardButtonsHistoryCleanH = 0;
  static double boardButtonsHistoryCleanW = 0;
  static double boardButtonsNumOprH = 0;
  static double boardButtonsNumOprW = 0;
  static double paddingButtons = 0;
  static double boardHistoryButtonH = 0;
  static double boardHistoryButtonW = 0;
  static double boardHistoryH = 0;
  static double boardHistoryW = 0;
  static double boardHistoryButtonSpace = 0;
  static double historyButtonH = 0;
  static double historyButtonW = 0;

  void appSectionsPercent() {
    appBarHeight = setFullsizeHeight * 0.091;
    boardResult = setFullsizeHeight * (23.1 / 100);
    boardButtons = setFullsizeHeight * (67.8 / 100);
    boardResultButtonsW = setFullsizeWidth * (92.1 / 100);
    boardResultButtonsH = boardButtons * (92.1 / 100);
    boardButtonsPadding = boardButtons * 0.0399;
    boardButtonsHistoryCleanW = boardResultButtonsW;
    boardButtonsHistoryCleanH = boardResultButtonsH * 0.0593;
    boardButtonsHistoryCleanPad = boardResultButtonsH * 0.0445;
    boardButtonsNumOprH = boardResultButtonsH * (81.19 / 100);
    boardButtonsNumOprW = boardResultButtonsW;
    paddingButtons = boardResultButtonsH * 0.0284;
    boardHistoryButtonH = boardResultButtonsH;
    boardHistoryButtonW = boardResultButtonsW * (73.3 / 100);
    boardHistoryW = boardHistoryButtonW;
    boardHistoryH = boardResultButtonsH * (90.8 / 100);
    boardHistoryButtonSpace = boardHistoryH * 0.0544;
    historyButtonH = boardHistoryH * 0.0993;
    historyButtonW = boardHistoryW * (44.7 / 100);
  }

  List<double> init(BuildContext context) {
    textScaleFactor = MediaQuery.of(context).textScaleFactor;
    setFullsizeWidth = MediaQuery.of(context).size.width;
    setFullsizeHeight = MediaQuery.of(context).size.height;
    appSectionsPercent();
    return [textScaleFactor, setFullsizeHeight, setFullsizeHeight];
  }
}
