import 'package:flutter/material.dart';

import 'package:bmi_calculator/constants.dart';

class RoundIconButton extends StatelessWidget {
  final Function updateNumber;
  final IconData icon;

  RoundIconButton({@required this.icon, @required this.updateNumber});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Theme.of(context).buttonColor,
      ),
      onPressed: updateNumber,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          iconButtonBorderRadius,
        ),
      ),
      fillColor: iconButtonFillColor,
      constraints: BoxConstraints.tightFor(
        width: iconButtonWidth,
        height: iconButtonHeight,
      ),
    );
  }
}
