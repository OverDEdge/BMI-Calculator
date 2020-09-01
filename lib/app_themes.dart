import 'package:flutter/material.dart';

import './constants.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
  accentColor: Colors.grey[900],
  buttonColor: Colors.pinkAccent[700],
  textSelectionColor: Colors.blueAccent[100],
  scaffoldBackgroundColor: darkBgColor,
  primaryColor: darkBgColor,
);

ThemeData customTheme = ThemeData.dark().copyWith(
  primaryColor: customPrimaryColor, // Remember to add 0xFF for Opaque value
  scaffoldBackgroundColor: customScaffoldBgColor,
  accentColor: customAccentColor,
  textTheme: TextTheme(
    bodyText2: TextStyle(
      color: Colors.white,
    ),
    button: TextStyle(
      color: Colors.white,
    ),
  ),
  buttonColor: customButtonColor,
  textSelectionColor: customTextSelectionColor,
);
