import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';

class MyAppTheme {
  ThemeData darkTheme() {
    return ThemeData(
      primaryColor: AppColors.gery2,
      brightness: Brightness.dark,
      iconTheme: const IconThemeData(
          color: AppColors.primary), //tooltip and backspace icon color
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: AppColors.primary,
          onPrimary: AppColors.secondary2, //
          secondary: AppColors.gery7,
          onSecondary: AppColors.gery6, //
          error: AppColors.gery6, //
          onError: AppColors.gery7, //
          background: AppColors.gery2, //
          onBackground: AppColors.gery6, //
          surface: AppColors.gery7, //numbers buttom color
          onSurface: AppColors.gery1 //backgrund buttom color
          ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.gery1, //
        foregroundColor: AppColors.gery3, //
        centerTitle: true,
      ),
      secondaryHeaderColor: AppColors.gery3, //
    );
  }

  ThemeData lightTheme() {
    return ThemeData(
      primaryColor: AppColors.secondary2,
      brightness: Brightness.light,
      iconTheme:
          const IconThemeData(color: AppColors.primary), //tooltip icon color
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.gery6.withOpacity(0.1), //
        foregroundColor: AppColors.secondary1, //
        centerTitle: true,
      ),
      secondaryHeaderColor: AppColors.secondary1, //
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.primary, //
          secondary: AppColors.gery7,
          onSecondary: AppColors.gery3, //
          error: AppColors.gery2, //
          onError: AppColors.gery7, //
          background: AppColors.secondary2, //
          onBackground: AppColors.gery1, //
          surface: AppColors.gery1, //numbers buttom color
          onSurface: AppColors.gery7 //backgrund buttom color
          ),
    );
  }
}
