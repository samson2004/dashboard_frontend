import 'package:dashboard_frontend/model/health_model.dart';

class HealthDetail {
  final HealthData = [
    HealthModel(
        icon: 'lib/asset/icons/burn.png',
        value: "305",
        title: "Calories burned"),
    HealthModel(
        icon: "lib/asset/icons/steps.png", value: "10,983", title: "Steps"),
    HealthModel(
        icon: "lib/asset/icons/distance.png", value: "7km", title: "Distance"),
    HealthModel(
        icon: "lib/asset/icons/sleep.png", value: "7h 48m", title: "Sleep")
  ];
}
