import 'package:flutter/material.dart';

final blueTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
    scaffoldBackgroundColor: Colors.white,
    dividerColor: Colors.blue,
    inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.red))));

final redTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
    scaffoldBackgroundColor: Colors.white,
    dividerColor: Colors.red,
    inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.red))));

final greenTheme = ThemeData(
    colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green),
    scaffoldBackgroundColor: Colors.white,
    dividerColor: Colors.green,
    inputDecorationTheme: const InputDecorationTheme(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width: 3, color: Colors.green))));
