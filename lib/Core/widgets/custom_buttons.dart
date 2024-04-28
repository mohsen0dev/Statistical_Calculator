import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';

class CustomButtons extends StatelessWidget {
  final String name;
  final Color? backgroundColor;
  final double? customWidth;
  final Gradient? backgroundGradient;
  final Color textColor;
  final double bottomPad;
  final double leftPad;
  final double rightPad;
  final double topPad;
  final TextEditingController controller;
  final Function(String)? onTapPos;
  final Function()? onTapPosVoid;

  const CustomButtons(
      {super.key,
      required this.name,
      this.backgroundColor,
      required this.textColor,
      this.bottomPad = 0,
      this.leftPad = 0,
      this.rightPad = 0,
      this.topPad = 0,
      this.backgroundGradient,
      required this.controller,
      this.onTapPos,
      this.onTapPosVoid,
      this.customWidth});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            bottom: bottomPad, left: leftPad, right: rightPad, top: topPad),
        child: InkWell(
            onTap: () {
              if (name != 'ثبت' &&
                  name != 'محاسبه' &&
                  name != 'حذف کل' &&
                  name != 'محاسبه جدید') {
                onTapPos!(name);
              } else {
                onTapPosVoid!();
              }
            },
            child: Container(
              height: AppSize.buttonsSizeH,
              width: customWidth ?? AppSize.buttonsSizeW,
              decoration: BoxDecoration(
                  gradient: backgroundGradient,
                  color: backgroundColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppSize.borderRadiusButtons))),
              child: Center(
                child: Text(name,
                    textAlign: TextAlign.center,
                    style: MyAppTextStyle.getBold(
                        color: textColor,
                        fontSize: AppSize.textSizeBoldButtom)),
              ),
            )));
  }
}
