import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_textbox.dart';

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
      this.backgroundGradient});

  @override
  Widget build(BuildContext context) {
    var controllerr = CustomTextBox();
    TextEditingController textEdited = TextEditingController();
    return Padding(
        padding: EdgeInsets.only(
            bottom: bottomPad!, left: leftPad!, right: rightPad!, top: topPad!),
        child: InkWell(
            onTap: () {
              // if (controllerr.value!.isEmpty) {
              //   if (name != '=' && name != 'C') {
              //     print(name);
              //
              //     print(controllerr.value.toString() + '0');
              //   }
              // } else if (controllerr.value!.isNotEmpty) {
              if (name != '=' && name != 'C') {
                if (controllerr.value == null) {
                  controllerr.value = name;
                  controllerr.setValueMethod();
                } else {
                  String currentValue = controllerr.value.toString();
                  String newValue = currentValue + name;
                  controllerr.value = newValue;
                  controllerr.setValueMethod();
                  print(controllerr.value.toString());
                }
              }
              // }
            },
            child: Container(
              height: heightSize,
              width: widthSize,
              decoration: BoxDecoration(
                  gradient: backgroundGradient ?? null,
                  color: backgroundColor ?? null,
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

  String? onPressedOP() {
    if (name != '=' && name != 'C') {
      return name;
    } else {
      return null;
    }
  }
}
