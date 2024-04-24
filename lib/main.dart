import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_statistical_calculator/Core/constants/my_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';

void main() {
  _loadThemeMode();
  runApp(const MyApp());
}

final customAppBarClr = Get.put(CustomAppbarController());
Future<void> _loadThemeMode() async {
  final numberMode = await SharedPreferences.getInstance();
  int? storedMode = numberMode.getInt('mode');
  storedMode ??= 0;
  customAppBarClr.selectedLDMode = storedMode;
  if (storedMode == 0) {
    customAppBarClr.modeCurrent.value = false;
  } else {
    customAppBarClr.modeCurrent.value = true;
  }
  print('');
}
