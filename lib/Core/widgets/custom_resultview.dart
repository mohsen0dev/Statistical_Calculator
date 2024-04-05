import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_size.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
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
    final TextStyle styleLigth =
        MyAppTextStyle.getBold(color: AppColors.gery3, fontSize: 17);
    final TextStyle styleDark =
        MyAppTextStyle.getBold(color: AppColors.gery6, fontSize: 17);
    return Column(
      children: [
        Text(
          nameField,
          style: probabilityControl.selectedDarkLight.value == true
              ? styleLigth.copyWith(fontSize: 20)
              : styleDark.copyWith(fontSize: 20),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: AppSize.boardButtons / 15,
          width: AppSize.setFullsizeWidth / 2.6,
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: AppColors.gery3, width: 2)),
          child: Text(
            viewValue,
            style: probabilityControl.selectedDarkLight.value == true
                ? styleLigth.copyWith(fontSize: 20)
                : styleDark.copyWith(fontSize: 20),
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
