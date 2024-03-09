import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';

class CustomButtons extends StatelessWidget {
  final String name;
  String callBackValue;
  final Color backgroundColor;
  final Color textColor;
  double? bottomPad;
  double? leftPad;
  double? rightPad;
  double? topPad;

  CustomButtons(
      {super.key,
      required this.name,
      required this.callBackValue,
      required this.backgroundColor,
      required this.textColor,
      this.bottomPad = 0,
      this.leftPad = 0,
      this.rightPad = 0,
      this.topPad = 0});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            bottom: bottomPad!, left: leftPad!, right: rightPad!, top: topPad!),
        child: InkWell(
            onTap: () {
              //onPressedOP();
            },
            child: Container(
              height: AppSize.buttonsSizeH,
              width: AppSize.buttonsSizeW,
              decoration: BoxDecoration(color: backgroundColor),
              child: Center(
                child: Text('name',
                    style: MyAppTextStyle.getBold(
                        color: textColor,
                        fontSize: AppSize.textSizeBoldButtom)),
              ),
            )));
  }

  String onPressedOP() {
    callBackValue = name;
    return callBackValue;
  }
}
