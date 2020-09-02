import 'package:flutter/material.dart';

import './constants.dart';

class GenderCard extends StatelessWidget {
  final String gender;
  final IconData genderIcon;

  GenderCard({
    @required this.gender,
    @required this.genderIcon,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = labelTextStyle.copyWith(
      color: Theme.of(context).textSelectionColor,
    );

    Text genderText = Text(
      gender,
      style: _textStyle,
      textAlign: TextAlign.center,
    );

    FittedBox genderIconBox = FittedBox(
      fit: BoxFit.fill,
      child: Icon(
        genderIcon,
      ),
    );

    return Column(
      children: [
        Expanded(
          child: Padding(
              padding: EdgeInsets.only(
                top: labelTopPadding,
                bottom: textToIconGenderCardPadding,
              ),
              child: genderIconBox),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: bottomCardPadding),
          child: genderText,
        ),
      ],
    );
  }
}
