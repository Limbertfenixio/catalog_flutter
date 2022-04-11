import 'package:flutter/material.dart';

import 'colors.dart';

class LightTheme {
  static final ThemeData theme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Colors.indigo[800],
    scaffoldBackgroundColor: ColorsThemeLight.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsThemeLight.primary,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: ColorsThemeLight.textColor,
        fontSize: 20,
      ),
    ),
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsThemeLight.primary,
      selectedIconTheme: IconThemeData(
        color: ColorsThemeLight.secondary,
      ),
      selectedLabelStyle: TextStyle(
        color: ColorsThemeLight.secondary,
      ),
      selectedItemColor: ColorsThemeLight.secondary,
      unselectedIconTheme: IconThemeData(
        color: Colors.indigo[50],
      ),
      unselectedItemColor: Colors.indigo[50],
    ),
  );
}
