import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_darklight_switch.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_shape_circle.dart';

class CustomAppBar extends StatelessWidget {
  final bool? selectedDarkLight;
  CustomAppBar({super.key, this.selectedDarkLight = false});
  final List<String> nameSections = [
    'آمار احتمالات',
    'جدول فراوانی',
    'روشن',
    'تاریک'
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor:
            selectedDarkLight == true ? AppColors.gery6 : AppColors.gery1,
        flexibleSpace: SizedBox(
          width: AppSize.setFullsizeWidth,
          child: AppbarCustomSelection(
            nameSections: nameSections,
            selectedDarkLight: selectedDarkLight,
          ),
        ));
  }
}

class AppbarCustomSelection extends StatelessWidget {
  final bool? selectedDarkLight;
  const AppbarCustomSelection({
    super.key,
    required this.nameSections,
    this.selectedDarkLight,
  });
  final List<String> nameSections;
  @override
  Widget build(BuildContext context) {
    final customApbarClr = Get.put(CustomAppbarController());
    return Column(
      children: [
        Container(
          width: AppSize.setFullsizeWidth,
          height: AppSize.appBarTitle,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: selectedDarkLight == true
                  ? AppColors.gery5
                  : AppColors.gery3),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  nameSections[0],
                  textScaler: TextScaler.linear(AppSize.textScaleFactor),
                  style: selectedDarkLight == true
                      ? MyAppTextStyle.getBold(
                          color: AppColors.gery3, fontSize: 22)
                      : MyAppTextStyle.getBold(
                          color: AppColors.gery6, fontSize: 22),
                ),
                const CustomShapeCircle(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: AppSize.appBarPadding,
        ),
        SizedBox(
          width: AppSize.setFullsizeWidth,
          height: AppSize.appBarMiniBoard,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  child: Text(
                    nameSections[1],
                    textAlign: TextAlign.center,
                    textScaler: TextScaler.linear(AppSize.textScaleFactor),
                    style: selectedDarkLight == true
                        ? MyAppTextStyle.getBold(
                            color: AppColors.gery3, fontSize: 17)
                        : MyAppTextStyle.getBold(
                            color: AppColors.gery6, fontSize: 17),
                  ),
                ),
                Row(
                  children: [
                    Obx(
                      () => Text(
                        customApbarClr.modeCurrent.value == 1
                            ? nameSections[2]
                            : nameSections[3],
                        textScaler: TextScaler.linear(AppSize.textScaleFactor),
                        style: MyAppTextStyle.getBold(
                            color: AppColors.gery5, fontSize: 17),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const SwitchDarkLight(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
