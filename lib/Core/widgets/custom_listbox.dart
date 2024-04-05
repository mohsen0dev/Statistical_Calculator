import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Core/constants/color_app.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_controller.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_model.dart';

class CustomListBox extends StatelessWidget {
  const CustomListBox(
      {super.key,
      required this.probabilityModel,
      required this.probabilityControl,
      required this.listValue});
  final ProbabilityStatisticsModel probabilityModel;
  final ProbabilityStatisticsController probabilityControl;
  final List<String> listValue;

  @override
  Widget build(BuildContext context) {
    final TextStyle styleLigth =
        MyAppTextStyle.getBold(color: AppColors.gery3, fontSize: 17);
    final TextStyle styleDark =
        MyAppTextStyle.getBold(color: AppColors.gery6, fontSize: 17);
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: ProbabilityStatisticsModel.arryListBox.length,
        itemBuilder: (context, index) {
          return Text(
            listValue[index],
            style: probabilityControl.selectedDarkLight.value == true
                ? styleLigth.copyWith(fontSize: 20)
                : styleDark.copyWith(fontSize: 20),
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          );
        });
  }
}
