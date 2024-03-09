import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_buttons.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_controller.dart';

class CalculatorView {
  var calculatorControl = Get.put(CalculatorController());
  Widget all = Center(
    child: Column(
      children: [
        SizedBox(
          width: AppSize.setFullsizeWidth,
          height: AppSize.boardResult,
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Stack(children: [
                    Positioned(
                      right: 0,
                      bottom: 80,
                      child: Row(
                        children: [
                          Text(
                            '45',
                            style: MyAppTextStyle.medium(
                                color: AppColors.gery5, fontSize: 36),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 10),
                            child: Container(
                              margin: const EdgeInsets.only(bottom: 5),
                              child: Text(
                                'x',
                                style: MyAppTextStyle.medium(
                                    color: AppColors.gery5, fontSize: 30),
                              ),
                            ),
                          ),
                          Text(
                            '24',
                            style: MyAppTextStyle.medium(
                                color: AppColors.gery5, fontSize: 36),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Text(
                        '1088',
                        style: MyAppTextStyle.getBold(
                            color: AppColors.gery6, fontSize: 64),
                      ),
                    )
                  ]),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: AppSize.setFullsizeWidth,
          height: AppSize.boardButtons,
          decoration: const BoxDecoration(color: AppColors.gery2),
          child: Column(
            children: [
              Container(
                width: AppSize.setFullsizeWidth,
                height: AppSize.dividerGeradientHeight,
                child: null,
                decoration:
                    const BoxDecoration(gradient: AppColors.gradientColor),
              ),
              Padding(
                padding: EdgeInsets.all(AppSize.boardButtonsPadding),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(
                                  Icons.backspace_outlined,
                                  color: AppColors.secondary1,
                                  size: 35,
                                )),
                          ),
                          InkWell(
                            onTap: () => CalculatorView()
                                    .calculatorControl
                                    .pressedButtonShowHistory
                                    .value =
                                !CalculatorView()
                                    .calculatorControl
                                    .pressedButtonShowHistory
                                    .value,
                            child: const ButtonShowHistory(),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: AppSize.boardButtonsHistoryCleanPad,
                    ),
                    SizedBox(
                      height: AppSize.boardButtonsNumOprH,
                      width: AppSize.boardButtonsNumOprW,
                      child: Row(
                        children: [
                          CustomButtons(
                            name: '1',
                            callBackValue: CalculatorView()
                                .calculatorControl
                                .pressedButtonValue
                                .value,
                            backgroundColor: AppColors.gery3,
                            textColor: AppColors.gery6,
                            bottomPad: AppSize.paddingButtonsH,
                            leftPad: 0,
                            rightPad: AppSize.paddingButtonsW,
                            topPad: 0,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

class ButtonShowHistory extends StatelessWidget {
  const ButtonShowHistory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          children: [
            Visibility(
              visible: CalculatorView()
                          .calculatorControl
                          .pressedButtonShowHistory
                          .value ==
                      true
                  ? true
                  : false,
              child: Container(
                width: 44,
                height: 32,
                decoration: BoxDecoration(
                    color: AppColors.gery6,
                    borderRadius: BorderRadius.circular(
                        AppSize.borderRadiusButtonShowHistory)),
                child: const Icon(
                  Icons.access_time_sharp,
                  size: 30,
                  color: AppColors.gery3,
                ),
              ),
            ),
            Visibility(
              visible: CalculatorView()
                          .calculatorControl
                          .pressedButtonShowHistory
                          .value ==
                      false
                  ? true
                  : false,
              child: const Row(
                children: [
                  Icon(
                    Icons.access_time_sharp,
                    size: 35,
                    color: AppColors.secondary1,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
