import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/controller/custom_appbar_controller.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_darklight_switch.dart';

class CustomAppBar extends StatelessWidget {
  final bool? selectedDarkLight;
  CustomAppBar({super.key, this.selectedDarkLight = false});
  final List<String> nameSections = ['ماشین حساب', 'آمار احتمالات'];

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
  AppbarCustomSelection({
    super.key,
    required this.nameSections,
    this.selectedDarkLight,
  });
  final List<String> nameSections;
  final customApbarClr = Get.put(CustomAppbarController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: AppSize.setFullsizeWidth,
          height: 47,
          child: Obx(() {
            return Row(
              children: [
                InkWell(
                    highlightColor: AppColors.gery1.withOpacity(0.0),
                    splashColor: AppColors.gery1.withOpacity(0.0),
                    onTap: () => customApbarClr.selectedSection.value = 1,
                    child: Container(
                      width: AppSize.setFullsizeWidth / 2,
                      decoration: BoxDecoration(
                          color: selectedDarkLight == true
                              ? customApbarClr.selectedSection == 1
                                  ? AppColors.gery6
                                  : AppColors.gery5
                              : customApbarClr.selectedSection == 1
                                  ? AppColors.gery1
                                  : AppColors.gery3),
                      child: Center(
                        child: Text(
                          nameSections[1],
                          style: selectedDarkLight == true
                              ? customApbarClr.selectedSection == 1
                                  ? MyAppTextStyle.getBold(
                                      color: AppColors.gery3, fontSize: 20)
                                  : MyAppTextStyle.medium(
                                      color: AppColors.gery7, fontSize: 20)
                              : customApbarClr.selectedSection == 1
                                  ? MyAppTextStyle.getBold(
                                      color: AppColors.gery7, fontSize: 20)
                                  : MyAppTextStyle.medium(
                                      color: AppColors.gery6, fontSize: 20),
                        ),
                      ),
                    )),
                InkWell(
                    highlightColor: AppColors.gery1.withOpacity(0.0),
                    splashColor: AppColors.gery1.withOpacity(0.0),
                    onTap: () => customApbarClr.selectedSection.value = 0,
                    child: Container(
                      width: AppSize.setFullsizeWidth / 2,
                      decoration: BoxDecoration(
                          color: selectedDarkLight == true
                              ? customApbarClr.selectedSection == 0
                                  ? AppColors.gery6
                                  : AppColors.gery5
                              : customApbarClr.selectedSection == 0
                                  ? AppColors.gery1
                                  : AppColors.gery3),
                      child: Center(
                        child: Text(
                          nameSections[0],
                          style: selectedDarkLight == true
                              ? customApbarClr.selectedSection == 0
                                  ? MyAppTextStyle.getBold(
                                      color: AppColors.gery3, fontSize: 20)
                                  : MyAppTextStyle.medium(
                                      color: AppColors.gery7, fontSize: 20)
                              : customApbarClr.selectedSection == 0
                                  ? MyAppTextStyle.getBold(
                                      color: AppColors.gery7, fontSize: 20)
                                  : MyAppTextStyle.medium(
                                      color: AppColors.gery6, fontSize: 20),
                        ),
                      ),
                    )),
              ],
            );
          }),
        ),
        const SizedBox(height: 7,),
        SizedBox(
          width: AppSize.setFullsizeWidth,
          height: 26,
          child:Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Obx(() => Text(customApbarClr.modeCurrent.value==1?'روشن':'تاریک',style: MyAppTextStyle.getBold(color: AppColors.gery5,fontSize: 17), ),),
              const Padding(
                padding: EdgeInsets.only(left: 10,right: 5),
                child: SwitchDarkLight(),
              ),
            ],
          ) ,
        ),
      ],
    );
  }
}
