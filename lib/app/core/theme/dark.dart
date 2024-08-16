import 'package:flutter/material.dart';
import 'package:valorent_guide/app/core/constants/app_style.dart';

abstract class DarkTheme {
  static ThemeData appThemeDark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      titleMedium: AppStyles.titleMid,
      titleLarge: AppStyles.titleLarge,
      bodySmall: AppStyles.bodySmall,
      bodyMedium: AppStyles.bodyMid,
      bodyLarge: AppStyles.bodyLarge,
    ),
  );
}
