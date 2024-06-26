import 'package:flutter/material.dart';

class AppSize {
  static double setFullsizeWidth = 0;
  static double setFullsizeHeight = 0;
  static double textScaleFactor = 0;
  static const double borderRadiusButtons = 9;
  static const double borderRadiusBoxHistory = 12;
  static const double borderRadiusButtonShowHistory = 7;
  static const double borderRadiusButtonClearHistory = 28;
  static const double borderRadiusresultButton = 16;
  static const double textSizeBoldButtom = 21;
  static const double textSizeMedium = 14.5;
  static const double dividerGeradientHeight = 10;
  static double appBarHeight = 0;
  static double appBarTitle = 0;
  static double appBarPadding = 0;
  static double appBarMiniBoard = 0;
  static double boardInputDate = 0;
  static double boardButtons = 0;
  static double boardResultButtonsH = 0;
  static double boardResultButtonsW = 0;
  static double boardButtonsPadding = 0;
  static double boardButtonsHistoryCleanPad = 0;
  static double boardButtonsHistoryCleanH = 0;
  static double boardButtonsHistoryCleanW = 0;
  static double boardButtonsNumOprH = 0;
  static double boardButtonsNumOprW = 0;
  static double buttonsSizeH = 0;
  static double buttonsSizeW = 0;
  static double bigButtonsSizeW = 0;
  static double paddingButtonsH = 0;
  static double paddingButtonsW = 0;
  static double boardHistoryButtonH = 0;
  static double boardHistoryButtonW = 0;
  static double boardHistoryH = 0;
  static double boardHistoryW = 0;
  static double boardHistoryButtonSpace = 0;
  static double historyButtonH = 0;
  static double historyButtonW = 0;

  void appSectionsPercent() {
    appBarHeight = setFullsizeHeight * 0.090;
    boardInputDate = setFullsizeHeight * (23.1 / 100);
    boardButtons = setFullsizeHeight * (67.75 / 100);
    appBarTitle = appBarHeight * (57.35 / 100);
    appBarPadding = appBarHeight * 0.0854;
    appBarMiniBoard = appBarHeight * (31.71 / 100);
    boardResultButtonsW = setFullsizeWidth * (92.1 / 100);
    boardResultButtonsH = boardButtons * (97 / 100);
    boardButtonsPadding = boardButtons * 0.0190;
    boardButtonsHistoryCleanW = boardResultButtonsW;
    boardButtonsHistoryCleanH = boardResultButtonsH * 0.0593;
    boardButtonsHistoryCleanPad = boardResultButtonsH * 0.0200;
    boardButtonsNumOprH = boardResultButtonsH * (85.18 / 100);
    boardButtonsNumOprW = boardResultButtonsW;
    buttonsSizeH = boardButtonsNumOprH * (17.7 / 100);
    buttonsSizeW = boardButtonsNumOprW * (30.8 / 100);
    bigButtonsSizeW = boardButtonsNumOprW * (65.3 / 100);
    paddingButtonsH = boardButtonsNumOprH * 0.02342;
    paddingButtonsW = boardButtonsNumOprW * 0.03690;
    boardHistoryButtonH = boardResultButtonsH;
    boardHistoryButtonW = boardResultButtonsW * (76.5 / 100);
    boardHistoryW = boardHistoryButtonW;
    boardHistoryH = boardButtonsNumOprH * (84.99 / 100);
    boardHistoryButtonSpace = boardHistoryH * 0.0544;
    historyButtonH = boardHistoryH * 0.100;
    historyButtonW = boardHistoryW * (65.2 / 100);
  }

  List<double> init(BuildContext context) {
    setFullsizeWidth = MediaQuery.of(context).size.width;
    setFullsizeHeight = MediaQuery.of(context).size.height;
    appSectionsPercent();
    return [setFullsizeHeight, setFullsizeHeight];
  }
}
