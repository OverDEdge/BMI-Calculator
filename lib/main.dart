import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './input_page.dart';
import './theme_model.dart';
import './app_themes.dart';

void main() => runApp(
      ChangeNotifierProvider<ThemeModel>(
        create: (BuildContext context) => ThemeModel(),
        child: BMICalculator(),
      ),
    );

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeModel>(
      builder: (context, notifier, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: notifier.customThemeActive ? customTheme : darkTheme,
          home: InputPage(),
        );
      },
    );
  }
}
