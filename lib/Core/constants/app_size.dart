import 'package:flutter/material.dart';

class AppSize {
  static double textScaleFactor = 0;
  static var fullSizeMediaQueryWidth;
  static var fullSizeMediaQueryheight;
  static const double borderRadiusButton = 9;
  static const double borderRadiusBoxHistory = 12;
  static const double borderRadiusButtonShowHistory = 7;
  static const double borderRadiusButtonClearHistory = 28;
  static const double borderRadiusresultButton = 16;
  static const double textSizeBoldButtom = 26;
  static const double textSizeMedium = 16;
  void setFullsizeWidth(BuildContext context) {
    fullSizeMediaQueryWidth = MediaQuery.of(context).size.width;
  }

  void setFullsizeHeight(BuildContext context) {
    fullSizeMediaQueryheight = MediaQuery.of(context).size.height;
  }

  void init(BuildContext context) {
    textScaleFactor = MediaQuery.of(context).textScaleFactor;
  }
}
