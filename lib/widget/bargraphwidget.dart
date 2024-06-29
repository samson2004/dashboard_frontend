import 'dart:js_interop';

import 'package:dashboard_frontend/data/bar_graph_data.dart';
import 'package:dashboard_frontend/model/graph_model.dart';
import 'package:dashboard_frontend/widget/customcardwidget.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bargraphwidget extends StatelessWidget {
  const bargraphwidget({super.key});

  @override
  Widget build(BuildContext context) {
    final bargraphdata = Bargraphdata();

    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: bargraphdata.data.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 12,
          childAspectRatio: 5 / 4),
      itemBuilder: (context, index) => Customcard(
          padding: EdgeInsets.all(5),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                bargraphdata.data[index].label,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            Expanded(
                child: BarChart(BarChartData(
                    barGroups: _chartGroups(
                        points: bargraphdata.data[index].graph,
                        color: bargraphdata.data[index].color),
                    borderData: FlBorderData(border: Border()),
                    gridData: FlGridData(show: false),
                    titlesData: FlTitlesData(
                        bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                                showTitles: true,
                                getTitlesWidget: ((value, meta) {
                                  return Padding(
                                      padding: EdgeInsets.all(5),
                                      child: Text(
                                        bargraphdata.label[value.toInt()],
                                        style: const TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey),
                                      ));
                                }))),
                        leftTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        rightTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false)),
                        topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false))))))
          ])),
    );
  }
}

_chartGroups({required List<GraphModel> points, required Color color}) {
  return points
      .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
            BarChartRodData(
                toY: point.y,
                width: 12,
                color: color.withOpacity(point.y.toInt() > 4 ? 1 : 0.4),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(3), topRight: Radius.circular(3))),
          ]))
      .toList();
}
