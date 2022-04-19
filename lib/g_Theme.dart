
import 'package:flutter/material.dart';

ThemeData gTheme() => ThemeData(
  primaryColorLight: const Color.fromRGBO(31, 34, 88, 1.0),
  appBarTheme: const AppBarTheme(
      color: Color(0xff28345a)
  ),
  fontFamily: 'Georgia',
  splashColor: Colors.brown,
  colorScheme: ColorScheme.fromSwatch(
    brightness: Brightness.light,
    backgroundColor: Colors.lightGreen,
  ).copyWith(
    secondary: Colors.green,
  ),
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.bold,
      color: Colors.brown,
      fontFamily: 'droid',
    ),
    headline2: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.red,
      fontFamily: 'droid',
    ),
    bodyText1: TextStyle(
        fontSize: 26,
        color: Color.fromRGBO(0, 0, 0, 0.6),
        fontFamily: 'droid'
    ),
    bodyText2: TextStyle(
        fontSize: 25,
        color: Color.fromRGBO(0, 0, 0, 0.6),
        fontFamily: 'droid'
    ),
  ),
);