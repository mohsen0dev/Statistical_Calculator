import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';

class CustomTextBox extends StatefulWidget {
  String? value;
  CustomTextBox({super.key, this.value});
  void setValueMethod() {
    _CustomTextBoxState().updateValue(value.toString());
  }

  @override
  State<CustomTextBox> createState() => _CustomTextBoxState();
}

class _CustomTextBoxState extends State<CustomTextBox> {
  TextEditingController? controller;
  void updateValue(String value) {
    setState(() {
      controller!.text = value ?? '';
    });
  }

  @override
  Widget build(BuildContext context) {
    FocusNode focusNode = FocusNode();
    return TextField(
      focusNode: focusNode,
      autofocus: false,
      onTap: () {
        FocusScope.of(context).requestFocus(focusNode);
      },
      style: MyAppTextStyle.getBold(color: AppColors.gery7, fontSize: 35),
      controller: controller,
    );
  }
}
