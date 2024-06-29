import 'package:dashboard_frontend/data/health_data.dart';
import 'package:dashboard_frontend/util/responsive.dart';
import 'package:dashboard_frontend/widget/customcardwidget.dart';
import 'package:flutter/material.dart';

class activityDetailcolumn extends StatelessWidget {
  const activityDetailcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetail = HealthDetail();
    return GridView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: healthDetail.HealthData.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.IsMobile(context) ? 2 : 4,
            crossAxisSpacing: Responsive.IsMobile(context) ? 12 : 15,
            mainAxisSpacing: 12.0),
        itemBuilder: ((context, index) => Customcard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    healthDetail.HealthData[index].icon,
                    width: 35,
                    height: 35,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    healthDetail.HealthData[index].value,
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(healthDetail.HealthData[index].title,
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                ],
              ),
            )));
  }
}
