import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_buttons.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_datatable.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_listbox.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_resultview.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_textbox.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_controller.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_model.dart';

class ProbabilityStatisticsView extends StatelessWidget {
  const ProbabilityStatisticsView({super.key});
  static var probabilityControl = Get.put(ProbabilityStatisticsController());
  static var probabilityModel = Get.put(ProbabilityStatisticsController());
  @override
  Widget build(BuildContext context) {
    List<String> homePageStr = [
      'ورود داده',
      'پس از نوشتن یک داده دکمه ثبت را بزنید',
      'داده وارد شده',
      'هیچ داده ای برای انجام عملیات وجود ندارد',
      'فیلد ورود داده خالی است',
      'عبارت ریاضی به طور صحیح وارد نشده',
      'خطا'
    ];
    return Center(
        child: Column(
      children: [
        SizedBox(
          width: AppSize.setFullsizeWidth,
          height: AppSize.boardInputDate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    homePageStr[0],
                    textScaler: TextScaler.linear(AppSize.textScaleFactor),
                    style: probabilityControl.selectedDarkLight.value == true
                        ? MyAppTextStyle.getBold(
                            color: AppColors.gery3, fontSize: 25)
                        : MyAppTextStyle.getBold(
                            color: AppColors.gery6, fontSize: 25),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 50,
                    child: CustomTextBox(
                      heightSize: 100,
                      widthSize: 200,
                      controller: probabilityControl.textController,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Tooltip(
                    message: homePageStr[1],
                    textStyle:
                        probabilityControl.selectedDarkLight.value == true
                            ? MyAppTextStyle.getBold(
                                color: AppColors.gery3, fontSize: 25)
                            : MyAppTextStyle.getBold(
                                color: AppColors.gery6, fontSize: 25),
                    showDuration: const Duration(seconds: 3),
                    triggerMode: TooltipTriggerMode.tap,
                    child: Icon(
                      Icons.info_outline_rounded,
                      size: 30,
                      color: probabilityControl.selectedDarkLight.value == true
                          ? AppColors.gery3
                          : AppColors.gery6,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(() => Text(
                    '${probabilityControl.numberData} ' '${homePageStr[2]}',
                    textScaler: TextScaler.linear(AppSize.textScaleFactor),
                    style: probabilityControl.selectedDarkLight.value == true
                        ? MyAppTextStyle.getBold(
                            color: AppColors.gery3, fontSize: 25)
                        : MyAppTextStyle.getBold(
                            color: AppColors.gery6, fontSize: 25),
                  )),
            ],
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
                            probabilityControl.backSpace();
                          },
                          child: const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.backspace_outlined,
                                color: AppColors.secondary1,
                                size: 35,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: AppSize.boardButtonsHistoryCleanPad,
                  ),
                  SizedBox(
                    height: AppSize.boardButtonsNumOprH,
                    width: AppSize.boardButtonsNumOprW,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              name: '9',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              rightPad: AppSize.paddingButtonsW,
                              name: '8',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              rightPad: AppSize.paddingButtonsW,
                              name: '7',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              name: '6',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              rightPad: AppSize.paddingButtonsW,
                              name: '5',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              rightPad: AppSize.paddingButtonsW,
                              name: '4',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              name: '3',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              rightPad: AppSize.paddingButtonsW,
                              name: '2',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              rightPad: AppSize.paddingButtonsW,
                              name: '1',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButtons(
                              bottomPad: AppSize.paddingButtonsH,
                              name: '.',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                            CustomButtons(
                              rightPad: AppSize.paddingButtonsW,
                              bottomPad: AppSize.paddingButtonsH,
                              name: '0',
                              backgroundColor: AppColors.gery1,
                              textColor: AppColors.gery6,
                              customWidth: AppSize.bigButtonsSizeW,
                              controller: probabilityControl.textController,
                              onTapPos: (value) {
                                probabilityControl.numberButtons(value);
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CustomButtons(
                              name: 'ثبت',
                              backgroundGradient: AppColors.gradientColor,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPosVoid: () {
                                if (probabilityControl
                                    .textController.text.isNotEmpty) {
                                  if (probabilityControl.textController.text !=
                                      '0.') {
                                    probabilityControl.addDataButton();
                                  } else {
                                    Get.snackbar(
                                      '',
                                      '',
                                      titleText: Text(
                                        homePageStr[6],
                                        style: probabilityControl
                                                    .selectedDarkLight.value ==
                                                true
                                            ? MyAppTextStyle.getBold(
                                                color: AppColors.gery3,
                                                fontSize: 23)
                                            : MyAppTextStyle.getBold(
                                                color: AppColors.gery6,
                                                fontSize: 23),
                                      ),
                                      messageText: Text(
                                        homePageStr[5],
                                        style: probabilityControl
                                                    .selectedDarkLight.value ==
                                                true
                                            ? MyAppTextStyle.getBold(
                                                color: AppColors.gery3,
                                                fontSize: 22)
                                            : MyAppTextStyle.getBold(
                                                color: AppColors.gery6,
                                                fontSize: 22),
                                      ),
                                    );
                                  }
                                } else {
                                  Get.snackbar(
                                    '',
                                    '',
                                    titleText: Text(
                                      homePageStr[6],
                                      style: probabilityControl
                                                  .selectedDarkLight.value ==
                                              true
                                          ? MyAppTextStyle.getBold(
                                              color: AppColors.gery3,
                                              fontSize: 23)
                                          : MyAppTextStyle.getBold(
                                              color: AppColors.gery6,
                                              fontSize: 23),
                                    ),
                                    messageText: Text(
                                      homePageStr[4],
                                      style: probabilityControl
                                                  .selectedDarkLight.value ==
                                              true
                                          ? MyAppTextStyle.getBold(
                                              color: AppColors.gery3,
                                              fontSize: 22)
                                          : MyAppTextStyle.getBold(
                                              color: AppColors.gery6,
                                              fontSize: 22),
                                    ),
                                  );
                                }
                              },
                            ),
                            CustomButtons(
                                rightPad: AppSize.paddingButtonsW,
                                name: 'محاسبه',
                                backgroundColor: AppColors.gery3,
                                textColor: AppColors.gery6,
                                controller: probabilityControl.textController,
                                onTapPosVoid: () {
                                  if (probabilityControl.numberData.value ==
                                      0) {
                                    Get.snackbar(
                                      '',
                                      '',
                                      titleText: Text(
                                        homePageStr[6],
                                        style: probabilityControl
                                                    .selectedDarkLight.value ==
                                                true
                                            ? MyAppTextStyle.getBold(
                                                color: AppColors.gery3,
                                                fontSize: 23)
                                            : MyAppTextStyle.getBold(
                                                color: AppColors.gery6,
                                                fontSize: 23),
                                      ),
                                      messageText: Text(
                                        homePageStr[3],
                                        style: probabilityControl
                                                    .selectedDarkLight.value ==
                                                true
                                            ? MyAppTextStyle.getBold(
                                                color: AppColors.gery3,
                                                fontSize: 22)
                                            : MyAppTextStyle.getBold(
                                                color: AppColors.gery6,
                                                fontSize: 22),
                                      ),
                                    );
                                  } else {
                                    probabilityControl.resulltButton();
                                  }
                                }),
                            CustomButtons(
                              rightPad: AppSize.paddingButtonsW,
                              name: 'حذف کل',
                              backgroundColor: AppColors.gery3,
                              textColor: AppColors.gery6,
                              controller: probabilityControl.textController,
                              onTapPosVoid: () {
                                probabilityControl.clearButton();
                              },
                            ),
                          ],
                        ),
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

class ResultView extends StatelessWidget {
  const ResultView(
      {super.key,
      required this.probabilityModel,
      required this.probabilityControl});
  final ProbabilityStatisticsModel probabilityModel;
  final ProbabilityStatisticsController probabilityControl;

  @override
  Widget build(BuildContext context) {
    final TextStyle styleLigth =
        MyAppTextStyle.getBold(color: AppColors.gery3, fontSize: 17);
    final TextStyle styleDark =
        MyAppTextStyle.getBold(color: AppColors.gery6, fontSize: 17);

    List<String> resultFeildName = [
      'جدول تعداد فراوانی',
      'R',
      'L',
      'K',
      'محاسبه جدید',
    ];
    List<String> columnName = [
      'شماره دسته',
      'کلاس یا دسته',
      'حد متوسط',
      'فراوانی',
      'درصد فراوانی',
      'فراوانی تجمعی',
      'درصد فراوانی تجمعی',
      'جدول فراوانی',
    ];
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Center(
        child: Column(
          children: [
            Container(
              height: (AppSize.boardInputDate + AppSize.boardButtons) / 2.3,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    child: CustomDataTable(
                      columnName: columnName,
                      rowName: probabilityControl.arryDatatable,
                      probabilityControl: probabilityControl,
                      probabilityModel: probabilityModel,
                    )),
              ),
            ),
            Container(
              height: AppSize.boardButtons / 1.37,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          resultFeildName[0],
                          style:
                              probabilityControl.selectedDarkLight.value == true
                                  ? styleLigth.copyWith(fontSize: 20)
                                  : styleDark.copyWith(fontSize: 20),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                            height: AppSize.boardButtons / 1.57,
                            width: AppSize.setFullsizeWidth / 2.6,
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                border: Border.all(
                                    color: AppColors.gery3, width: 2)),
                            child: CustomListBox(
                              probabilityModel: probabilityModel,
                              probabilityControl: probabilityControl,
                              listValue: ProbabilityStatisticsModel.arryListBox,
                            )),
                      ],
                    ),
                  ),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomResultView(
                            probabilityControl: probabilityControl,
                            probabilityModel: probabilityModel,
                            nameField: resultFeildName[1],
                            viewValue: probabilityControl.R.toString()),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomResultView(
                            probabilityControl: probabilityControl,
                            probabilityModel: probabilityModel,
                            nameField: resultFeildName[2],
                            viewValue: probabilityControl.L.toString()),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomResultView(
                            probabilityControl: probabilityControl,
                            probabilityModel: probabilityModel,
                            nameField: resultFeildName[3],
                            viewValue: probabilityControl.K.toString()),
                        const SizedBox(
                          height: 20,
                        ),
                        CustomButtons(
                          name: resultFeildName[4],
                          backgroundGradient: AppColors.gradientColor,
                          textColor: AppColors.gery6,
                          controller: ProbabilityStatisticsView
                              .probabilityControl.textController,
                          onTapPosVoid: () {
                            probabilityControl.clearButton();
                            probabilityControl.showResultPage.value = false;
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
