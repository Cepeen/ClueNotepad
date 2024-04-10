import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final blueTheme = ThemeData(
  primaryColor: Color(0xFF0064B6),
  appBarTheme: AppBarTheme(
    color: Color(0xFF0064B6),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF5291FF)),
  scaffoldBackgroundColor: Color(0xFFFCFCFC),
);

final redTheme = ThemeData(
  primaryColor: Color(0xFFFF382A),
  appBarTheme: AppBarTheme(
    color: Color(0xFFFF382A),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color.fromARGB(255, 253, 89, 78)),
  scaffoldBackgroundColor: Color(0xFFFCFCFC),
);

final greenTheme = ThemeData(
  primaryColor: Color(0xFF2E9B31),
  appBarTheme: AppBarTheme(
    color: Color(0xFF2E9B31),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFF5CCA78)),
  scaffoldBackgroundColor: Color(0xFFFCFCFC),
);

final yellowTheme = ThemeData(
  primaryColor: Color(0xFFC4B742),
  appBarTheme: AppBarTheme(
    color: Color(0xFFC4B742),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFFFF8B)),
  scaffoldBackgroundColor: Color(0xFFFCFCFC),
);

final purpleTheme = ThemeData(
  primaryColor: Color(0xFF9C27B0),
  appBarTheme: AppBarTheme(
    color: Color(0xFF9C27B0),
    systemOverlayStyle: SystemUiOverlayStyle.light,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFE040FB)),
  scaffoldBackgroundColor: Color(0xFFFCFCFC),
);

final whiteTheme = ThemeData(
  primaryColor: Color(0xFFAAAAAA),
  appBarTheme: AppBarTheme(
    color: Color(0xFFAAAAAA),
    systemOverlayStyle: SystemUiOverlayStyle.dark,
  ),
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFBEBEBE)),
  scaffoldBackgroundColor: Color(0xFFFCFCFC),
);
