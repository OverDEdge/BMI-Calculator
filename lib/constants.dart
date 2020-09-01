import 'package:flutter/material.dart';

const double labelTopPadding = 10.0,
    labelBottomPadding = 8.0,
    bottomGenderCardPadding = 20.0,
    textToIconGenderCardPadding = 8.0,
    labelTextFontSize = 16.0,
    numberTextFontSize = 35.0,
    cardBorderRadius = 10.0,
    cardMargin = 15.0,
    calcBmiTopMargin = 10.0,
    themeFontSize = 18.0,
    themeSwitchPadding = 16.0,
    maleMinHeight = 120.0,
    maleMaxHeight = 220.0,
    femaleMinHeight = 100.0,
    femaleMaxHeight = 200.0,
    thumbRadius = 12.0,
    thumbOverlayRadius = 24.0,
    thumbOverlayOpacity = 0.25;

const Color customPrimaryColor = Color(0xFF0A0D22),
    customScaffoldBgColor = Color(0xFF0A0D22),
    customAccentColor = Color(0xFF1D1F33),
    customTextSelectionColor = Color(0xFF8D8E98),
    customButtonColor = Color(0xFFEB1555),
    inactiveButtonColor = Color(0xFF8D8E98),
    darkBgColor = Color(0xFF0A0D10),
    activeCardColor = Color(0xFF1D1F33),
    inactiveCardColor = Color(0xFF111328);

const String appBarTitle = 'BMI CALCULATOR',
    heightText = 'HEIGHT',
    weightText = 'WEIGHT',
    heightUnit = ' cm';

const int cardFlex = 4, calcBmiFlex = 2, sliderCardFlex = 5;

enum Gender { male, female }

const labelTextStyle = TextStyle(
  fontSize: labelTextFontSize,
  fontWeight: FontWeight.bold,
);

const numberTextStyle = TextStyle(
  fontSize: numberTextFontSize,
  fontWeight: FontWeight.w900,
);
