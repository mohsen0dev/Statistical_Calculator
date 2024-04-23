import 'package:flutter/material.dart';
import 'package:simple_statistical_calculator/Core/constants/app_text_style.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_controller.dart';
import 'package:simple_statistical_calculator/Features/probability_statistics/probability_statistics_model.dart';

class CustomDataTable extends StatelessWidget {
  const CustomDataTable(
      {super.key,
      required this.columnName,
      required this.rowName,
      required this.probabilityModel,
      required this.probabilityControl});
  final List<String> columnName;
  final List<List<String>> rowName;
  final ProbabilityStatisticsModel probabilityModel;
  final ProbabilityStatisticsController probabilityControl;

  @override
  Widget build(BuildContext context) {
    final themedata = Theme.of(context);
    return DataTable(
        horizontalMargin: 20,
        dividerThickness: 2,
        headingTextStyle: MyAppTextStyle.getBold(
            color: themedata.colorScheme.onSecondary, fontSize: 17),
        columnSpacing: 35,
        dataRowColor:
            MaterialStatePropertyAll(themedata.colorScheme.background),
        dataTextStyle: MyAppTextStyle.getBold(
            color: themedata.colorScheme.onSecondary, fontSize: 17),
        columns: [
          DataColumn(
              label: Text(
            columnName[0],
          )),
          DataColumn(
              label: Text(
            columnName[1],
          )),
          DataColumn(
              label: Text(
            columnName[2],
          )),
          DataColumn(
              label: Text(
            columnName[3],
          )),
          DataColumn(
              label: Text(
            columnName[4],
          )),
          DataColumn(
              label: Text(
            columnName[5],
          )),
          DataColumn(
              label: Text(
            columnName[6],
          )),
        ],
        rows: List.generate(
            rowName.length,
            (index) => DataRow(
                cells: List.generate(
                    rowName[index].length,
                    (callIndex) => DataCell(Text(
                          rowName[index][callIndex],
                          textDirection: TextDirection.ltr,
                        ))))));
  }
}
