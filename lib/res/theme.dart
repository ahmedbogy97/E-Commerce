import 'package:flutter/material.dart';

import 'color.dart';

ThemeData get lightTheme {
  return ThemeData(

    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: primaryColor,
      onPrimary: Colors.black,
      primaryVariant: Colors.grey,
      secondary: Colors.grey,
      secondaryVariant: Colors.grey,
      onSecondary: Colors.grey,
      background: Colors.grey,
      onBackground: Colors.grey,
      surface: Colors.grey,
      onSurface: Colors.grey,
      error: Colors.grey,
      onError: Colors.grey,
    ),
    backgroundColor: scaffoldBackgroundColor,
    primaryColor: primaryColor,
    splashColor: Colors.black,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(primaryColor),
        minimumSize: MaterialStateProperty.all(
          const Size(60, 55),
        ),
      ),
    ),
  );
}