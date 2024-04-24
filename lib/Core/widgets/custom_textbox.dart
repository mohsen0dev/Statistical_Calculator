import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';

class CustomTextBox extends StatelessWidget {
  CustomTextBox({
    required this.controller,
    this.widthSize,
    this.heightSize,
    super.key,
  });
  TextEditingController? controller;
  double? widthSize;
  double? heightSize;
  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return SizedBox(
      height: heightSize,
      width: widthSize,
      child: TextField(
        decoration: InputDecoration(
            focusColor: themedata.colorScheme.primary,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
        autofocus: false,
        readOnly: true,
        maxLines: 1,
        textAlign: TextAlign.justify,
        textDirection: TextDirection.ltr,
        style: MyAppTextStyle.getBold(
            color: themedata.colorScheme.surface, fontSize: 25),
        controller: controller,
        inputFormatters: [
          FilteringTextInputFormatter.deny(
              RegExp('[ a-zA-Zآ-ی!@#?^&*()_*-/+%`~|":;,{}]'))
        ],
        onChanged: (value) {
          onChanged(value);
        },
      ),
    );
  }

  void onChanged(String value) {
    if (value.isNotEmpty) {
      String lastChar = value[value.length - 1];
      if (lastChar == '[' ||
          lastChar == ']' ||
          lastChar == '\\' ||
          lastChar == '<' ||
          lastChar == '>' ||
          lastChar == '\'' ||
          lastChar == '|') {
        String currentValue = controller!.text;
        controller!.text = currentValue.substring(0, currentValue.length - 1);
      }
    }
  }
}
