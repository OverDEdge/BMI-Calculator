import 'package:flutter/material.dart';

class ThemeModel extends ChangeNotifier {
  bool _customThemeActive = true;
  final String _themeName = 'Toggle Theme';

  bool get customThemeActive => _customThemeActive;
  String get themeName => _themeName;

  toggleTheme() {
    _customThemeActive = !_customThemeActive;
    notifyListeners();
  }
}
