import 'package:fl_chart/fl_chart.dart';

class Linedata {
  final spots = const [
    FlSpot(1, 100.00), // Starting point
    FlSpot(7, 102.50), // Small increase
    FlSpot(13, 101.75), // Small decrease
    FlSpot(17, 103.00), // Increase
    FlSpot(21, 104.50), // Increase
    FlSpot(25, 103.00), // Decrease
    FlSpot(30, 105.00), // Increase
    FlSpot(35, 106.50), // Increase
    FlSpot(40, 104.75), // Decrease
    FlSpot(45, 107.00), // Increase
    FlSpot(50, 108.50), // Increase
    FlSpot(55, 107.25), // Decrease
    FlSpot(60, 109.00), // Increase
    FlSpot(70, 110.50), // Increase
    FlSpot(75, 108.75), // Decrease
    FlSpot(80, 111.00), // Increase
    FlSpot(85, 109.50), // Decrease
    FlSpot(90, 110.00), // Increase
    FlSpot(95, 108.25), // Decrease
    FlSpot(100, 109.00), // Increase
    FlSpot(105, 107.50), // Decrease
    FlSpot(108, 108.00), // Increase
    FlSpot(110, 106.50), // Decrease // Increase
  ];

  final lefttitle = {
    0: '0',
    20: '2k',
    40: '4k',
    60: '6k',
    80: '8k',
    100: '10k'
  };

  final bottomtitle = {
    0: 'jan',
    10: 'feb',
    20: 'mar',
    30: 'apr',
    40: 'may',
    50: 'jun',
    60: 'jul',
    70: 'aug',
    80: 'sep',
    90: 'oct',
    100: 'nov',
    110: 'dec'
  };
}
