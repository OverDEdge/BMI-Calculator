import 'package:flutter/material.dart';

import './constants.dart';

class InputCard extends StatelessWidget {
  final Color color;
  final Widget child;
  final Function gestureFunction;

  InputCard({@required this.color, @required this.gestureFunction, this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureFunction,
      child: Container(
        child: child,
        width: double.infinity,
        height: double.infinity,
        margin: EdgeInsets.all(cardMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cardBorderRadius),
          color: color,
        ),
      ),
    );
  }
}
