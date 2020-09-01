import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './theme_model.dart';

import './constants.dart';

class ThemeTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: themeSwitchPadding),
      child: Consumer<ThemeModel>(
        builder: (context, ThemeModel notifier, child) {
          return SwitchListTile(
            title: Text(
              notifier.themeName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: themeFontSize,
              ),
            ),
            onChanged: (val) {
              notifier.toggleTheme();
            },
            value: notifier.customThemeActive,
            activeColor: Theme.of(context).buttonColor,
          );
        },
      ),
    );
  }
}
