import 'package:flutter/material.dart';

const primaryColor = Colors.blueAccent;

final lightTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Color(0xffd9d9d9),
  colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.light, seedColor: primaryColor),
  useMaterial3: true,
);

final darkTheme = ThemeData(
  primaryColor: primaryColor,
  scaffoldBackgroundColor: Color.fromRGBO(26, 26, 26, 80),
  colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark, seedColor: primaryColor),
  useMaterial3: true,
);
