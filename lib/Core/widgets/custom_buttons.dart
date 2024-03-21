import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';

class CustomButtons extends StatelessWidget {
  final String name;
  Color? backgroundColor;
  Gradient? backgroundGradient;
  final Color textColor;
  final double widthSize;
  final double heightSize;
  double? bottomPad;
  double? leftPad;
  double? rightPad;
  double? topPad;
  final TextEditingController controller;
  final Function() onTapPos;

  CustomButtons(
      {super.key,
      required this.name,
      this.backgroundColor,
      required this.textColor,
      this.bottomPad = 0,
      this.leftPad = 0,
      this.rightPad = 0,
      this.topPad = 0,
      required this.widthSize,
      required this.heightSize,
      this.backgroundGradient,
      required this.controller,
      required this.onTapPos});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            bottom: bottomPad!, left: leftPad!, right: rightPad!, top: topPad!),
        child: InkWell(
            onTap: onTapPos,
            child: Container(
              height: heightSize,
              width: widthSize,
              decoration: BoxDecoration(
                  gradient: backgroundGradient,
                  color: backgroundColor,
                  borderRadius: const BorderRadius.all(
                      Radius.circular(AppSize.borderRadiusButtons))),
              child: Center(
                child: Text(name,
                    style: MyAppTextStyle.getBold(
                        color: textColor,
                        fontSize: AppSize.textSizeBoldButtom)),
              ),
            )));
  }
}
