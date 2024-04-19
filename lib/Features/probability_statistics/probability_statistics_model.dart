import 'package:flutter/material.dart';
import 'dart:math';

class ProbabilityStatisticsModel {
  bool hasDecimal = false;
  List<double> inputArryData = [];
  static List<String> arryListBox = [];
  static List<List<String>> arryDatatable = [];
  String _sub1 = '', _data = '';
  double _classKhoroj1 = 0, _hadMotevaset = 0, _classKhoroj = 0, L = 0, R = 0;
  int _i = 0,
      value = 0,
      _count = 0,
      _faravani1 = 0,
      _numberGroup = 0,
      _faravani = 0,
      _darsadFaravaniTajamoei1 = 0,
      _faravaniTajamoei = 0,
      _darsadFaravaniTajamoei = 0,
      _darsadFaravani = 0,
      _value = 0,
      _value1 = 0,
      _ij = 0,
      K = 0,
      _minNum = 0,
      _bigNum = 0;

  dynamic resulltButton() {
    _i = value;
    _count = value;
    _i--;
    inputArryData.sort();
    _classKhoroj = inputArryData[0];
    //calculation R K L
    R = inputArryData[_i] - inputArryData[0];
    K = (1 + (3.32 * (log(_count) / log(10)))).round();
    L = R / K;
    //calculation and rounde data's
    _data = L.toString();
    _value = _data.lastIndexOf(".");
    _value1 = _data.length;
    if (_value == 1) {
      if (_value1 == 3) {
        L += 0.1;
      } else if (_value1 == 4) {
        _sub1 = _data.substring(0, 4);
        L = double.parse(_sub1);
        L += 0.01;
      } else {
        _sub1 = _data.substring(0, 4);
        L = double.parse(_sub1);
        L += 0.01;
      }
    } else if (_value == 2) {
      if (_value1 == 4) {
        L += 00.1;
      } else if (_value1 == 5) {
        _sub1 = _data.substring(0, 5);
        L = double.parse(_sub1);
        L += 00.01;
      } else {
        _sub1 = _data.substring(0, 5);
        L = double.parse(_sub1);
        L += 00.01;
      }
    } else {
      L += 0.1;
    }
    //send calculation to listview FOR view
    List<List<String>> arryGread2D =
        List.generate(K, (index) => List<String>.filled(7, ''));
    List<String> dataRase = List<String>.generate(2, (index) => '');
    for (; _ij < K; _ij++) {
      _classKhoroj1 = _classKhoroj;
      _classKhoroj += L;
      for (int ijj = 0; ijj <= 6; ijj++) {
        if (ijj == 0) {
          _numberGroup += 1;
          arryGread2D[_ij][ijj] = _numberGroup.toString();
        } else if (ijj == 1) {
          arryGread2D[_ij][ijj] = '${_classKhoroj1.toStringAsFixed(2)}'
              ' - '
              '${_classKhoroj.toStringAsFixed(2)}';
        } else if (ijj == 2) {
          _hadMotevaset = (_classKhoroj1 + _classKhoroj) / 2;
          _hadMotevaset = (_hadMotevaset * 100).round() / 100;
          _hadMotevaset = double.parse(_hadMotevaset.toStringAsFixed(2));
          arryGread2D[_ij][ijj] = _hadMotevaset.toString();
        } else if (ijj == 3) {
          for (int dataI = 0; dataI < inputArryData.length; dataI++) {
            if (_classKhoroj1 <= inputArryData[dataI].toDouble() &&
                _classKhoroj > inputArryData[dataI].toDouble()) {
              _faravani++;
              arryListBox.add(inputArryData[dataI].toString());
            }
          }
          _faravani1 = _faravani1 + _faravani;
          arryListBox.add("-------");
          arryGread2D[_ij][ijj] = _faravani.toString();
        } else if (ijj == 4) {
          dataRase[0] = ('$_faravani.0');
          dataRase[1] = ('$_count.0');
          _faravani = 0;
          _darsadFaravani =
              ((double.parse(dataRase[0]) / double.parse(dataRase[1])) * 100)
                  .round();
          _darsadFaravaniTajamoei1 = _darsadFaravani.toInt();
          arryGread2D[_ij][ijj] = _darsadFaravani.toString();
        } else if (ijj == 5) {
          _faravaniTajamoei = _faravani1;
          arryGread2D[_ij][ijj] = _faravaniTajamoei.toString();
        } else if (ijj == 6) {
          _darsadFaravaniTajamoei += _darsadFaravaniTajamoei1;
          arryGread2D[_ij][ijj] = _darsadFaravaniTajamoei.toString();
        }
      }
    }
    //send informations to org_arry FOR view datatable
    for (int i = 0; i < K; i++) {
      List<String> row = [];
      for (int j = 0; j <= 6; j++) {
        row.add(arryGread2D[i][j]);
      }
      arryDatatable.add(row);
    }
    //review end cell data
    List<int> proc = [];
    List<int> proc1 = List<int>.filled(K, 0);
    int kv = K;
    kv -= 1;
    String dataGrCellEnd;
    dataGrCellEnd = arryDatatable[kv][6].toString();
    for (int il = 0; il <= kv; il++) {
      proc.add(int.parse(arryDatatable[il][4]));
      proc1[il] = int.parse(arryDatatable[il][4]);
    }
    proc.sort();
    _minNum = proc[0];
    if (dataGrCellEnd == "101") {
      for (int ii = 0; ii <= kv; ii++) {
        if (_minNum == proc1[ii]) {
          proc1[ii] -= 1;
          _bigNum = int.parse(arryDatatable[ii][6]);
          _bigNum -= 1;
          arryDatatable[ii][6] = _bigNum.toString();
          for (int io = 0; io <= kv; io++) {
            arryDatatable[io][4] = proc1[io].toString();
          }
          arryDatatable[kv][6] = "100";
        }
      }
    } else if (dataGrCellEnd == "99") {
      for (int iii = 0; iii <= kv; iii++) {
        if (_minNum == proc1[iii]) {
          proc1[iii] += 1;
          _bigNum = int.parse(arryDatatable[iii][6]);
          _bigNum += 1;
          arryDatatable[iii][6] = _bigNum.toString();
          for (int iio = 0; iio < proc1.length; iio++) {
            arryDatatable[iio][6] = proc1[iio].toString();
          }
          arryDatatable[kv][5] = "100";
        }
      }
    }
    //Return data for view
    return [K.toString(), L.toStringAsFixed(2), R.toString(), arryDatatable];
  }

  void clearButton() {
    hasDecimal = false;
    inputArryData = [];
    arryListBox = [];
    arryDatatable = [];
    _sub1 = '';
    _data = '';
    K = 0;
    _classKhoroj1 = 0;
    _hadMotevaset = 0;
    L = 0;
    R = 0;
    _classKhoroj = 0;
    _i = 0;
    _count = 0;
    _faravani1 = 0;
    _numberGroup = 0;
    _faravani = 0;
    _darsadFaravaniTajamoei1 = 0;
    _faravaniTajamoei = 0;
    _darsadFaravaniTajamoei = 0;
    _darsadFaravani = 0;
    _value = 0;
    _value1 = 0;
    _ij = 0;
    _minNum = 0;
    _bigNum = 0;
  }

  String backSpace(TextEditingController value) {
    if (value.text.isNotEmpty) {
      if (value.text[value.text.length - 1] == '.') {
        hasDecimal = false;
        return value.text = value.text.substring(0, value.text.length - 1);
      } else {
        return value.text = value.text.substring(0, value.text.length - 1);
      }
    } else {
      return '';
    }
  }

  String numberButtons(String name, TextEditingController value) {
    if (name == '.') {
      if (value.text.isNotEmpty) {
        if (hasDecimal) {
          return '';
        } else {
          hasDecimal = true;
          return name;
        }
      } else {
        hasDecimal = true;
        return '0.';
      }
    } else {
      if (value.text.isEmpty) {
        return name;
      } else {
        if (name == '0') {
          if (value.text.length == 1 && value.text[0] == '0') {
            return '';
          } else {
            return name;
          }
        } else {
          if (value.text.length == 1 && value.text[0] == '0') {
            return '';
          } else {
            return name;
          }
        }
      }
    }
  }
}
