import 'package:flutter/material.dart';

class Responsive {
  static bool IsMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 850;

  static bool IsTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 850;

  static bool IsDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;
}
