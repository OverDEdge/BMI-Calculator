import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class BottomButton extends StatelessWidget {
  final String text;
  final Function route;

  BottomButton({@required this.text, @required this.route});

  @override
  Widget build(BuildContext context) {
    TextStyle _bmiCalcTextStyle = bmiCalcTextStyle.copyWith(
      color: Theme.of(context).cardColor,
    );
    var calcBmiColor = Theme.of(context).buttonColor;

    return GestureDetector(
      onTap: route,
      child: Container(
        padding: EdgeInsets.only(bottom: calcBmiBottomPadding),
        width: double.infinity,
        color: calcBmiColor,
        margin: EdgeInsets.only(top: calcBmiTopMargin),
        child: Center(
          child: Text(
            text,
            style: _bmiCalcTextStyle,
          ),
        ),
      ),
    );
  }
}
