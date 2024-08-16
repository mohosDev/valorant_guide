import 'package:flutter/material.dart';

abstract class DarkTheme {
  static ThemeData appThemeDark = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      textTheme: const TextTheme());
}
