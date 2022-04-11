import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  bool _isDarkTheme = true;

  bool get getIsDarkTheme => this._isDarkTheme;

  set setIsDarkTheme(bool isDarkTheme) {
    this._isDarkTheme = isDarkTheme;
    notifyListeners();
  }
}
