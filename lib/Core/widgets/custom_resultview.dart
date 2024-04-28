import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_controller.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_model.dart';

class CustomResultView extends StatelessWidget {
  const CustomResultView(
      {super.key,
      required this.nameField,
      required this.viewValue,
      required this.probabilityModel,
      required this.probabilityControl});
  final String nameField;
  final String viewValue;
  final ProbabilityStatisticsModel probabilityModel;
  final ProbabilityStatisticsController probabilityControl;

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return Column(
      children: [
        Text(nameField,
            style: MyAppTextStyle.getBold(
                color: themedata.colorScheme.onSecondary, fontSize: 18.5)),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: AppSize.boardButtons / 14,
          width: AppSize.setFullsizeWidth / 2.6,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border:
                  Border.all(color: themedata.colorScheme.onPrimary, width: 2)),
          child: Center(
            child: Text(
              viewValue,
              style: MyAppTextStyle.getBold(
                  color: themedata.colorScheme.onSecondary, fontSize: 18.5),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
