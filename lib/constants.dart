import 'package:flutter/material.dart';

const double labelTopPadding = 10.0,
    labelBottomPadding = 8.0,
    numberBottomPadding = 4.0,
    bottomCardPadding = 12.0,
    textToIconGenderCardPadding = 8.0,
    labelTextFontSize = 18.0,
    numberTextFontSize = 30.0,
    cardBorderRadius = 10.0,
    cardMargin = 15.0,
    calcBmiTopMargin = 10.0,
    themeFontSize = 18.0,
    themeSwitchPadding = 12.0,
    maleMinHeight = 120.0,
    maleMaxHeight = 220.0,
    femaleMinHeight = 100.0,
    femaleMaxHeight = 200.0,
    thumbRadius = 10.0,
    thumbOverlayRadius = 20.0,
    thumbOverlayOpacity = 0.25,
    screenMinHeight = 600,
    iconButtonWidth = 40.0,
    iconButtonHeight = 40.0,
    iconButtonGapWidth = 10.0,
    iconButtonBorderRadius = 8.0,
    bmiCalcTextFontSize = 22.0,
    calcBmiBottomPadding = 10.0,
    resultTopTextFontSize = 50.0,
    resultNumberFontSize = 90.0,
    resultCardTextFontSize = 25.0,
    resultAdviceTextFontSize = 16.0,
    resultScreenMinHeight = 400;

const Color customPrimaryColor = Color(0xFF0A0D22),
    customScaffoldBgColor = Color(0xFF0A0D22),
    customAccentColor = Color(0xFF1D1F33),
    customTextSelectionColor = Color(0xFF8D8E98),
    customButtonColor = Color(0xFFEB1555),
    inactiveButtonColor = Color(0xFF8D8E98),
    darkBgColor = Color(0xFF0A0D10),
    activeCardColor = Color(0xFF1D1F33),
    inactiveCardColor = Color(0xFF111328),
    iconButtonFillColor = Color(0xFF4C4F5E);

const String appBarTitle = 'BMI CALCULATOR',
    heightText = 'HEIGHT',
    weightText = 'WEIGHT',
    ageText = 'AGE',
    heightUnit = ' cm';

const int cardFlex = 4,
    calcBmiFlex = 2,
    sliderCardFlex = 5,
    resultCardFlex = 5,
    resultCalcBmiFlex = 1,
    resultTopTextFlex = 1;

enum Gender { male, female }
enum Property { weight, age }
enum NumberChange { increment, decrement }

const labelTextStyle = TextStyle(
  fontSize: labelTextFontSize,
  fontWeight: FontWeight.bold,
);

const numberTextStyle = TextStyle(
  fontSize: numberTextFontSize,
  fontWeight: FontWeight.w900,
);

const bmiCalcTextStyle = TextStyle(
  fontSize: bmiCalcTextFontSize,
  fontWeight: FontWeight.bold,
);

const resultTopTextStyle = TextStyle(
  fontSize: resultTopTextFontSize,
  fontWeight: FontWeight.bold,
);

const resultCardTextTextStyle = TextStyle(
  fontSize: resultCardTextFontSize,
  fontWeight: FontWeight.bold,
  color: Colors.green,
);

const resultNumberTextStyle = TextStyle(
  fontSize: resultNumberFontSize,
  fontWeight: FontWeight.bold,
);

const resultAdviceTextStyle = TextStyle(
  fontSize: resultAdviceTextFontSize,
);
