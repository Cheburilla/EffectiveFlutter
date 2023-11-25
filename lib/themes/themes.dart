import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: colorScheme,
    textTheme: primaryTextTheme);

const TextTheme primaryTextTheme = TextTheme(
    displayMedium:
        TextStyle(fontSize: 24, fontWeight: FontWeight.bold, height: 32),
    bodyMedium:
        TextStyle(fontSize: 16, fontWeight: FontWeight.normal, height: 20),
    titleLarge:
        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, height: 24),
    labelLarge:
        TextStyle(fontSize: 14, fontWeight: FontWeight.normal, height: 18),
    labelMedium:
        TextStyle(fontSize: 14, fontWeight: FontWeight.normal, height: 18));

const ColorScheme colorScheme = ColorScheme.light(
    brightness: Brightness.light,
    primary: Color(0xFF08A652),
    onPrimary: Colors.white,
    secondary: Color(0x8C000000));
