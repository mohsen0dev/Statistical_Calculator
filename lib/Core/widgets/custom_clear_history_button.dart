import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';

class CustomClearHistoryButton extends StatelessWidget {
  const CustomClearHistoryButton({super.key});

  @override
  Widget build(Object context) {
    return InkWell(
        onTap: () {},
        child: Container(
          height: AppSize.historyButtonH,
          width: AppSize.historyButtonW,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
                Radius.circular(AppSize.borderRadiusButtonClearHistory)),
            color: AppColors.gery4,
          ),
          child: Center(
              child: Text(
            'پاک کردن تاریخچه',
            style: MyAppTextStyle.getSemiBold(
                color: AppColors.gery6, fontSize: 20),
          )),
        ));
  }
}
