import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    colorScheme: colorScheme,
    textTheme: primaryTextTheme,
    tabBarTheme: TabBarTheme(
        dividerColor: const Color.fromRGBO(0, 0, 0, 0.12),
        indicatorSize: TabBarIndicatorSize.tab,
        unselectedLabelColor: const Color.fromRGBO(0, 0, 0, 0.55),
        indicator: const UnderlineTabIndicator(
            borderSide:
                BorderSide(color: Color.fromRGBO(6, 132, 65, 1), width: 2)),
        labelColor: Colors.black,
        labelStyle: primaryTextTheme.bodyMedium,
        unselectedLabelStyle: primaryTextTheme.bodyMedium));

TextTheme primaryTextTheme = const TextTheme(
    displayMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontFamily: "SF Pro Display",
        height: 1.33),
    bodyMedium: TextStyle(
        fontFamily: "SF Pro Text",
        height: 1.25,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        letterSpacing: -0.4),
    titleLarge: TextStyle(
        fontFamily: "SF Pro Text", fontSize: 20, fontWeight: FontWeight.bold),
    labelLarge: TextStyle(
        fontFamily: "SF Pro Text", fontSize: 14, fontWeight: FontWeight.normal),
    labelMedium: TextStyle(
        fontFamily: "SF Pro Text",
        fontSize: 14,
        fontWeight: FontWeight.normal));

const ColorScheme colorScheme = ColorScheme.light(
  brightness: Brightness.light,
  primary: Color(0xFF08A652),
  //onPrimary: Colors.white,
  //secondary: Color(0x8C000000),
);
