import 'package:bmi_calculator/age_weight_card.dart';
import 'package:bmi_calculator/height_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';

import './input_card.dart';
import './theme_tile.dart';
import './gender_card.dart';
import './constants.dart';
import './height_slider.dart';
import './age_weight_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender = Gender.male;
  var height = 180;
  var weight = 70;
  var age = 40;
  var minHeight = 120.0;
  var maxHeight = 220.0;

  void updateGender(Gender selectedGender) {
    /*
    Method for updating settings for the selected Gender.
    */
    setState(() {
      if (selectedGender == Gender.male) {
        gender = Gender.male;
        minHeight = maleMinHeight;
        maxHeight = maleMaxHeight;
      } else if (selectedGender == Gender.female) {
        gender = Gender.female;
        minHeight = femaleMinHeight;
        maxHeight = femaleMaxHeight;
      }

      if (height > maxHeight) {
        height = maxHeight.round();
      } else if (height < minHeight) {
        height = minHeight.round();
      }
    });
  }

  void updateProperty(Property property, NumberChange changeAction) {
    setState(() {
      int change;

      // Set change depending on user action
      if (changeAction == NumberChange.increment) {
        change = 1;
      } else if (changeAction == NumberChange.decrement) {
        change = -1;
      }

      // Change the property user clicked
      if (property == Property.weight) {
        weight += change;
      } else if (property == Property.age) {
        age += change;
      }
    });
  }

  void updateHeight(double newHeight) {
    setState(() {
      height = newHeight.round();
    });
  }

  @override
  Widget build(BuildContext context) {
    TextStyle _textStyle = labelTextStyle.copyWith(
      color: Theme.of(context).textSelectionColor,
    );
    TextStyle _numberTextStyle = numberTextStyle.copyWith(
      color: Theme.of(context).cardColor,
    );
    var calcBmiColor = Theme.of(context).buttonColor;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
        ),
        centerTitle: true,
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints.tightFor(
                height: max(screenMinHeight, constraints.maxHeight)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ThemeTile(),
                Expanded(
                  flex: cardFlex,
                  child: Row(
                    children: [
                      Expanded(
                        child: InputCard(
                          child: GenderCard(
                            gender: 'MALE',
                            genderIcon: FontAwesomeIcons.mars,
                          ),
                          color: gender == Gender.male
                              ? activeCardColor
                              : inactiveCardColor,
                          gestureFunction: () => updateGender(Gender.male),
                        ),
                      ),
                      Expanded(
                        child: InputCard(
                          child: GenderCard(
                            gender: 'FEMALE',
                            genderIcon: FontAwesomeIcons.venus,
                          ),
                          color: gender == Gender.female
                              ? activeCardColor
                              : inactiveCardColor,
                          gestureFunction: () => updateGender(Gender.female),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: cardFlex,
                  child: InputCard(
                    color: activeCardColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                            top: labelTopPadding,
                            bottom: labelBottomPadding,
                          ),
                          child: Text(
                            heightText,
                            style: _textStyle,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: <Widget>[
                            Text(
                              height.toString(),
                              style: _numberTextStyle,
                            ),
                            Text(
                              heightUnit,
                              style: _textStyle,
                            ),
                          ],
                        ),
                        HeightSlider(
                          height: height,
                          minHeight: minHeight,
                          maxHeight: maxHeight,
                          updateHeight: updateHeight,
                        ),
                      ],
                    ),
                    gestureFunction: () {},
                  ),
                ),
                Expanded(
                  flex: cardFlex,
                  child: Row(
                    children: [
                      Expanded(
                        child: AgeWeightCard(
                          property: Property.weight,
                          propertyValue: weight,
                          updateProperty: updateProperty,
                        ),
                      ),
                      Expanded(
                        child: AgeWeightCard(
                          property: Property.age,
                          propertyValue: age,
                          updateProperty: updateProperty,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: calcBmiFlex,
                  child: Container(
                    width: double.infinity,
                    color: calcBmiColor,
                    margin: EdgeInsets.only(top: calcBmiTopMargin),
                    child: Text(
                      'Test',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
