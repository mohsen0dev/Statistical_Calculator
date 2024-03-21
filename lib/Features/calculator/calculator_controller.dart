import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculatorController extends GetxController {
  RxBool pressedButtonShowHistory = false.obs;
  RxString pressedButtonValue = ''.obs;
  TextEditingController textController = TextEditingController();
}
