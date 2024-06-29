import 'package:dashboard_frontend/model/graph_model.dart';
import 'package:flutter/cupertino.dart';

class BargraphModel {
  final String label;
  final Color color;
  final List<GraphModel> graph;

  BargraphModel(
      {required this.label, required this.color, required this.graph});
}
