import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_statistical_calculator/Core/constants/app_bar.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/widgets/custom_page_view.dart';

class CalculatorView extends StatelessWidget {
  const CalculatorView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: AppColors.gery1,
          appBar: const CustomSelectionAppBar(),
          body: Center(
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
                                    padding: const EdgeInsets.only(right: 10,left: 10),
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
                SizedBox(
                  width: AppSize.setFullsizeWidth,
                  height: AppSize.boardButtom,
                  child: Column(
                    children: [
                      Container(
                        width: AppSize.setFullsizeWidth,
                        height: AppSize.dividerGeradientHeight,
                        child: null,
                        decoration: const BoxDecoration(
                            gradient: AppColors.GradientColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
