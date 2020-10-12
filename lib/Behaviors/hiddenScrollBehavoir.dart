import 'package:flutter/material.dart';

class HiddenScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrone(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
