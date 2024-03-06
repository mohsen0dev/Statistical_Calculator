import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';

class ProbabilityStatisticsView {
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
                            '4555',
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
                            '2466',
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
                        '10889978',
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
          height: AppSize.boardButtons,
          child: Column(
            children: [
              Container(
                width: AppSize.setFullsizeWidth,
                height: AppSize.dividerGeradientHeight,
                child: null,
                decoration:
                    const BoxDecoration(gradient: AppColors.gradientColor),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
