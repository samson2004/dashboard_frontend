import 'package:dashboard_frontend/widget/piechartwidget.dart';
import 'package:dashboard_frontend/widget/schelduledwidget.dart';
import 'package:dashboard_frontend/widget/summarydetailwidget.dart';
import 'package:flutter/material.dart';

class summarywidget extends StatelessWidget {
  const summarywidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff16121D),
      child: const Column(
        children: [
          SizedBox(
            height: 18,
          ),
          chart(),
          SizedBox(
            height: 18,
          ),
          Text(
            'Summary',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: summarydetails(),
          ),
          SizedBox(
            height: 25,
          ),
          scheduledwidget()
        ],
      ),
    );
  }
}
