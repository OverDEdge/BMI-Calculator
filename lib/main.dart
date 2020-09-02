import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/input_page.dart';
import './theme_model.dart';
import './app_themes.dart';
import './screens/result_page.dart';

/*
App Icon by: https://icons8.com/
*/

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
          initialRoute: '/',
          routes: {
            '/': (context) => InputPage(),
            '/bmi_result': (context) => ResultPage(),
          },
        );
      },
    );
  }
}
