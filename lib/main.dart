import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/my_app.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';

void main() {
  _loadThemeMode();
  runApp(const MyApp());
}

final customAppBarClr = Get.put(CustomAppbarController());
Future<void> _loadThemeMode() async {
  final numberMode = await SharedPreferences.getInstance();
  final storedMode = numberMode.getInt('mode');
  customAppBarClr.selectedLDMode = storedMode ?? 0;
}
