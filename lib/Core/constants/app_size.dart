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
  static const double dividerGeradientHeight=10;
  static double appBarHeight = 0;
  static double boardButtom = 0;
  static double boardResult = 0;
  // double setFullsizeWidth(BuildContext context) {
  //   return MediaQuery.of(context).size.width;
  // }

  // double setFullsizeHeight(BuildContext context) {
  //   return MediaQuery.of(context).size.height;
  // }
  void appSectionsPercent() {
    appBarHeight = setFullsizeHeight * 0.091;
    boardResult = setFullsizeHeight * (23.1 / 100);
    boardButtom = setFullsizeHeight * (66.5 / 100);
  }

  List<double> init(BuildContext context) {
    textScaleFactor = MediaQuery.of(context).textScaleFactor;
    setFullsizeWidth = MediaQuery.of(context).size.width;
    setFullsizeHeight = MediaQuery.of(context).size.height;
    appSectionsPercent();
    return [textScaleFactor, setFullsizeHeight, setFullsizeHeight];
  }
}
