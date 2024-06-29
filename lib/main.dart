import 'package:dashboard_frontend/const/constant.dart';
import 'package:dashboard_frontend/screens.dart/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Dashboard());
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dashboard',
      theme: ThemeData(
          scaffoldBackgroundColor: Const.bg, brightness: Brightness.dark),
      home: main_screen(),
    );
  }
}
