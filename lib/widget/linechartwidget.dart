import 'package:dashboard_frontend/const/constant.dart';
import 'package:dashboard_frontend/data/linechart_data.dart';
import 'package:dashboard_frontend/widget/customcardwidget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class linechartwidget extends StatelessWidget {
  const linechartwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Linedata();
    return Customcard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Steps Overview',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 20,
        ),
        AspectRatio(
            aspectRatio: 16 / 6,
            child: LineChart(LineChartData(
                lineTouchData: const LineTouchData(handleBuiltInTouches: true),
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                            showTitles: true,
                            interval: 1,
                            reservedSize: 40,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              return data.bottomtitle[value.toInt()] != null
                                  ? SideTitleWidget(
                                      axisSide: meta.axisSide,
                                      child: Text(
                                        data.bottomtitle[value.toInt()]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey[400]),
                                      ))
                                  : SizedBox();
                            })),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        interval: 1,
                        reservedSize: 40,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          return data.lefttitle[value.toInt()] != null
                              ? SideTitleWidget(
                                  axisSide: meta.axisSide,
                                  child: Text(
                                    data.lefttitle[value.toInt()].toString(),
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey[400]),
                                  ))
                              : SizedBox();
                        },
                      ),
                    )),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  LineChartBarData(
                      color: Const.selectioncolor,
                      barWidth: 2.5,
                      belowBarData: BarAreaData(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Const.selectioncolor.withOpacity(0.5),
                                Colors.transparent
                              ]),
                          show: true),
                      dotData: FlDotData(show: false),
                      spots: data.spots)
                ],
                minX: 0,
                maxX: 120,
                minY: -5,
                maxY: 105))),
      ],
    ));
  }
}
