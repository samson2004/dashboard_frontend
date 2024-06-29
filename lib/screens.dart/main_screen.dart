import 'package:dashboard_frontend/util/responsive.dart';
import 'package:dashboard_frontend/widget/dashboradwidget.dart';
import 'package:dashboard_frontend/widget/sidemenuwidget.dart';
import 'package:dashboard_frontend/widget/summarywidget.dart';
import 'package:flutter/material.dart';

class main_screen extends StatelessWidget {
  const main_screen({super.key});

  @override
  Widget build(BuildContext context) {
    final isdesktop = Responsive.IsDesktop(context);
    return Scaffold(
      drawer: !isdesktop
          ? SizedBox(
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      endDrawer: Responsive.IsMobile(context)
          ? SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: summarywidget(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isdesktop)
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                )),
          Expanded(flex: 7, child: SizedBox(child: DashboardWidget())),
          if (isdesktop) Expanded(flex: 3, child: summarywidget())
        ],
      )),
    );
  }
}
