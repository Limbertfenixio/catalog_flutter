import 'package:flutter/material.dart';

import 'colors.dart';

class DarkTheme {
  static final ThemeData theme = ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColor: Colors.indigo[800],
    scaffoldBackgroundColor: ColorsThemeDark.primary,
    appBarTheme: AppBarTheme(
      backgroundColor: ColorsThemeDark.primary,
      elevation: 0.0,
    ),
    bottomSheetTheme:
        BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: ColorsThemeDark.primary,
      selectedIconTheme: IconThemeData(
        color: ColorsThemeDark.secondary,
      ),
      selectedLabelStyle: TextStyle(
        color: ColorsThemeDark.secondary,
      ),
      selectedItemColor: ColorsThemeDark.secondary,
      unselectedIconTheme: IconThemeData(
        color: Colors.indigo[50],
      ),
      unselectedItemColor: Colors.indigo[50],
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
      headline1: TextStyle(
        fontSize: 22,
        color: ColorsThemeDark.textColor,
        fontWeight: FontWeight.w500,
      ),
    ).apply(
      bodyColor: ColorsThemeDark.textColor,
    ),
    dataTableTheme: DataTableThemeData(
      headingRowColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) {
          return Color.fromARGB(255, 27, 185, 224);
        },
      ),
      dividerThickness: 1.0,
    ),
  );
}
