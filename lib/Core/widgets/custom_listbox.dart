import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
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
    final themedata = Theme.of(context);
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: ProbabilityStatisticsModel.arryListBox.length,
        itemBuilder: (context, index) {
          return Text(
            listValue[index],
            style: MyAppTextStyle.getBold(
                color: themedata.colorScheme.onSecondary, fontSize: 18.5),
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.center,
          );
        });
  }
}
