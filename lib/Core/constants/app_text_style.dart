import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/gen/fonts.gen.dart';

abstract class FontManager {
  static const String fontFamilyEn = FontFamily.inter;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight medium = FontWeight.w500;
}

TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color) {
  return TextStyle(
      fontSize: fontSize * AppSize.textScaleFactor,
      fontFamily: FontFamily.inter,
      fontWeight: fontWeight,
      color: color);
}

class MyAppTextStyle {
  //semi Bold Style
  static TextStyle getSemiBold({required Color color, double fontSize = 16.0}) {
    return _getTextStyle(fontSize, FontManager.semiBold, color);
  }

  //Bold Style
  static TextStyle getBold({required Color color, double fontSize = 16.0}) {
    return _getTextStyle(fontSize, FontManager.bold, color);
  }

  //medium Style
  static TextStyle medium({required Color color, double fontSize = 16.0}) {
    return _getTextStyle(fontSize, FontManager.medium, color);
  }
}
