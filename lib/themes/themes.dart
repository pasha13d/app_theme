import 'package:flutter/material.dart';

enum AppTheme {
  redDark,
  greenDark,
  blueDark,
  cyanDark,
}

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.redDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.red,
    primarySwatch: Colors.red,
  ),
  AppTheme.greenDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.green,
    primarySwatch: Colors.green,
  ),
  AppTheme.blueDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    primarySwatch: Colors.blue,
  ),
  AppTheme.cyanDark: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.cyan,
    primarySwatch: Colors.cyan,
  ),
};