import 'package:dashboard_frontend/const/constant.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChartData {
  final piechartselectiondatas = [
    PieChartSectionData(
        color: Const.primarycolor, value: 25, showTitle: false, radius: 27),
    PieChartSectionData(
        color: Color.fromARGB(255, 0, 225, 255),
        value: 22,
        showTitle: false,
        radius: 30),
    PieChartSectionData(
        color: Color(0xffEE2727), value: 35, showTitle: false, radius: 30),
    PieChartSectionData(
        color: Color.fromARGB(255, 233, 173, 22),
        value: 63,
        showTitle: false,
        radius: 20),
  ];
}
