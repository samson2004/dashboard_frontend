import 'package:dashboard_frontend/const/constant.dart';
import 'package:dashboard_frontend/widget/customcardwidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class summarydetails extends StatelessWidget {
  const summarydetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Customcard(
      color: Const.cardbg,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetail('Cal', '305'),
          buildDetail('Steps', '10983'),
          buildDetail('Distance', '7km'),
          buildDetail('Sleep', '7hr ')
        ],
      ),
    );
  }

  Widget buildDetail(String textdatadetail, String textdatavalue) {
    return Column(
      children: [
        Text(
          textdatadetail,
          style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
        ),
        SizedBox(
          height: 2,
        ),
        Text(textdatavalue,
            style: TextStyle(fontSize: 12, color: Colors.grey.shade400))
      ],
    );
  }
}
