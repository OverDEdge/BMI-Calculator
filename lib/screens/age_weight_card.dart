import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/round_icon_button.dart';
import './input_card.dart';

class AgeWeightCard extends StatelessWidget {
  final Property property;
  final int propertyValue;
  final Function updateProperty;

  AgeWeightCard(
      {@required this.property,
      @required this.propertyValue,
      @required this.updateProperty});

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = labelTextStyle.copyWith(
      color: Theme.of(context).textSelectionColor,
    );
    TextStyle _numberTextStyle = numberTextStyle.copyWith(
      color: Theme.of(context).cardColor,
    );

    return InputCard(
      color: activeCardColor,
      gestureFunction: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: labelTopPadding,
              bottom: labelBottomPadding,
            ),
            child: Text(property == Property.weight ? weightText : ageText,
                style: _textStyle),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: numberBottomPadding),
            child: Text(
              propertyValue.toString(),
              style: _numberTextStyle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundIconButton(
                icon: FontAwesomeIcons.minus,
                updateNumber: () => updateProperty(
                  property,
                  NumberChange.decrement,
                ),
              ),
              SizedBox(
                width: iconButtonGapWidth,
              ),
              RoundIconButton(
                icon: FontAwesomeIcons.plus,
                updateNumber: () => updateProperty(
                  property,
                  NumberChange.increment,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
