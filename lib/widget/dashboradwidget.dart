import 'package:dashboard_frontend/util/responsive.dart';
import 'package:dashboard_frontend/widget/activitywidget.dart';
import 'package:dashboard_frontend/widget/bargraphwidget.dart';
import 'package:dashboard_frontend/widget/headerwidget.dart';
import 'package:dashboard_frontend/widget/linechartwidget.dart';
import 'package:dashboard_frontend/widget/summarywidget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget> {
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToTop();
    });
  }

  void _scrollToTop() {
    _scrollController
        .animateTo(
      _scrollController.position.maxScrollExtent,
      duration: Duration(milliseconds: 1),
      curve: Curves.easeOut,
    )
        .then((_) {
      _scrollController.animateTo(
        0.0,
        duration: Duration(milliseconds: 700),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: _scrollController,
      physics: const AlwaysScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 18),
              headerwidget(),
              SizedBox(height: 18),
              activityDetailcolumn(),
              SizedBox(height: 18),
              linechartwidget(),
              SizedBox(height: 18),
              bargraphwidget(),
              SizedBox(
                height: 18,
              ),
              if (Responsive.IsTablet(context)) summarywidget()
            ],
          ),
        ),
      ],
    );
  }
}
