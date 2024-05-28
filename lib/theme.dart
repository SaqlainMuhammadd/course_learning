import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.blue,
  primaryColor: Colors.blue,
  backgroundColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  accentColor: Colors.blueAccent,
  appBarTheme: AppBarTheme(
    color: Colors.blue,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.black),
    bodyText2: TextStyle(color: Colors.black),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.blue,
  primaryColor: Colors.black,
  backgroundColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  accentColor: Colors.blueAccent,
  appBarTheme: AppBarTheme(
    color: Colors.black,
  ),
  textTheme: TextTheme(
    bodyText1: TextStyle(color: Colors.white),
    bodyText2: TextStyle(color: Colors.white),
  ),
);
