import 'package:dashboard_frontend/model/bar_garph_model.dart';
import 'package:dashboard_frontend/model/graph_model.dart';
import 'package:flutter/cupertino.dart';

class Bargraphdata {
  final data = [
    BargraphModel(label: "Activity level", color: Color(0xffFEB95A), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 6),
    ]),
    BargraphModel(label: "Nutrition level", color: Color(0xffF2C8ED), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 6),
    ]),
    BargraphModel(label: "Hydration level", color: Color(0xff20AEF3), graph: [
      GraphModel(x: 0, y: 8),
      GraphModel(x: 1, y: 10),
      GraphModel(x: 2, y: 7),
      GraphModel(x: 3, y: 4),
      GraphModel(x: 4, y: 6),
      GraphModel(x: 5, y: 6),
    ])
  ];

  final label = ['M', 'T', 'W', 'T', 'F', 'S'];
}
