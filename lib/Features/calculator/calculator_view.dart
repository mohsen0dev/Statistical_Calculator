import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_box_history.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_buttons.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_clear_history_button.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_history_button.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_textbox.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_controller.dart';
import 'package:simple_statistical_calculator/Features/calculator/calculator_model.dart';

class CalculatorView extends StatelessWidget {
  CalculatorView({super.key});
  var calculatorControl = Get.put(CalculatorController());
  var calculatorModel = Get.put(CalculatorModel());
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          width: AppSize.setFullsizeWidth,
          height: AppSize.boardResult,
          child: CustomTextBox(
            controller: calculatorControl.textController,
          ),
        ),
        Expanded(
            child: Container(
          color: AppColors.gery2,
          width: AppSize.setFullsizeWidth,
          height: AppSize.boardButtons,
          child: Column(children: [
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
                          onTap: () {
                            calculatorModel.backSpace();
                          },
                          child: const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.backspace_outlined,
                                color: AppColors.secondary1,
                                size: 35,
                              )),
                        ),
                        InkWell(
                          onTap: () => calculatorControl
                                  .pressedButtonShowHistory.value =
                              !calculatorControl.pressedButtonShowHistory.value,
                          child: CustomHistoryButton(
                            calculatorClr: calculatorControl,
                          ),
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
                        Column(
                          children: [
                            CustomButtons(
                                heightSize: AppSize.buttonsSizeH,
                                widthSize: AppSize.buttonsSizeW,
                                bottomPad: AppSize.paddingButtonsH,
                                name: '/',
                                backgroundColor: AppColors.primary,
                                textColor: AppColors.gery6,
                                controller: calculatorControl.textController,
                                onTapPos: () {
                                  calculatorModel.numberOperatorButtons();
                                }),
                            CustomButtons(
                                heightSize: AppSize.buttonsSizeH,
                                widthSize: AppSize.buttonsSizeW,
                                bottomPad: AppSize.paddingButtonsH,
                                name: 'x',
                                backgroundColor: AppColors.primary,
                                textColor: AppColors.gery6,
                                controller: calculatorControl.textController,
                                onTapPos: () {
                                  calculatorModel.numberOperatorButtons();
                                }),
                            CustomButtons(
                                heightSize: AppSize.buttonsSizeH,
                                widthSize: AppSize.buttonsSizeW,
                                bottomPad: AppSize.paddingButtonsH,
                                name: '-',
                                backgroundColor: AppColors.primary,
                                textColor: AppColors.gery6,
                                controller: calculatorControl.textController,
                                onTapPos: () {
                                  calculatorModel.numberOperatorButtons();
                                }),
                            CustomButtons(
                              heightSize: AppSize.buttonsSizeH,
                              widthSize: AppSize.buttonsSizeW,
                              bottomPad: AppSize.paddingButtonsH,
                              name: '+',
                              backgroundColor: AppColors.primary,
                              textColor: AppColors.gery6,
                              controller: calculatorControl.textController,
                              onTapPos: () {
                                calculatorModel.numberOperatorButtons();
                              },
                            ),
                            CustomButtons(
                              heightSize: AppSize.buttonsSizeH,
                              widthSize: AppSize.buttonsSizeW,
                              name: '=',
                              backgroundGradient: AppColors.gradientColor,
                              textColor: AppColors.gery6,
                              controller: calculatorControl.textController,
                              onTapPos: () {
                                calculatorModel.resulltButton();
                              },
                            ),
                          ],
                        ),
                        BoardNumbers(
                          calculatorControl: calculatorControl,
                          calculatorModel: calculatorModel,
                        ),
                        BoardHistoryPanel(
                          calculatorControl: calculatorControl,
                          calculatorModel: calculatorModel,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]),
        ))
      ],
    ));
  }
}

class BoardHistoryPanel extends StatelessWidget {
  const BoardHistoryPanel({
    super.key,
    required this.calculatorControl,
    required this.calculatorModel,
  });
  final CalculatorModel calculatorModel;
  final CalculatorController calculatorControl;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
          visible: calculatorControl.pressedButtonShowHistory.value == true,
          child: SizedBox(
            width: AppSize.boardHistoryButtonW,
            height: AppSize.boardHistoryButtonH,
            child: Column(
              children: [
                const CustomBoxHistory(),
                SizedBox(
                  height: AppSize.boardHistoryButtonSpace,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: CustomClearHistoryButton(
                    onTapPos: () {
                      calculatorModel.clearHistoryButton();
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class BoardNumbers extends StatelessWidget {
  const BoardNumbers({
    super.key,
    required this.calculatorControl,
    required this.calculatorModel,
  });
  final CalculatorModel calculatorModel;
  final CalculatorController calculatorControl;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Visibility(
          visible: calculatorControl.pressedButtonShowHistory.value == false,
          child: Column(
            children: [
              Row(
                children: [
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '%',
                    backgroundColor: AppColors.gery3,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.bigButtonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: 'C',
                    backgroundColor: AppColors.gery3,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.clearButton();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '9',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '8',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '7',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '6',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '5',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '4',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '3',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '2',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    bottomPad: AppSize.paddingButtonsH,
                    rightPad: AppSize.paddingButtonsW,
                    name: '1',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.buttonsSizeW,
                    rightPad: AppSize.paddingButtonsW,
                    name: '.',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                  CustomButtons(
                    heightSize: AppSize.buttonsSizeH,
                    widthSize: AppSize.bigButtonsSizeW,
                    rightPad: AppSize.paddingButtonsW,
                    name: '0',
                    backgroundColor: AppColors.gery1,
                    textColor: AppColors.gery6,
                    controller: calculatorControl.textController,
                    onTapPos: () {
                      calculatorModel.numberOperatorButtons();
                    },
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
