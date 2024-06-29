import 'package:dashboard_frontend/const/constant.dart';
import 'package:dashboard_frontend/data/pichart_data.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class chart extends StatelessWidget {
  const chart({super.key});

  @override
  Widget build(BuildContext context) {
    final piechartdata = ChartData();
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
                sectionsSpace: 0,
                centerSpaceRadius: 70,
                startDegreeOffset: -90,
                sections: piechartdata.piechartselectiondatas),
          ),
          Positioned.fill(
              bottom: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: Const.defaultPadding,
                  ),
                  Text(
                    "70%",
                    style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontSize: 24,
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "of 100%",
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        height: 0.8,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
