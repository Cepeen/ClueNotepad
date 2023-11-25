import 'package:clue_notepad/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final blueTheme = ThemeData(colorSchemeSeed: Colors.blue);

final redTheme = ThemeData(colorSchemeSeed: Colors.red);

final greenTheme = ThemeData(colorSchemeSeed: Colors.green);

final yellowTheme = ThemeData(colorSchemeSeed: Colors.yellow);

final purpleTheme = ThemeData(colorSchemeSeed: Colors.purple);

final whiteTheme = ThemeData(colorSchemeSeed: Colors.blue[50]);



Color getColorPrimary(BuildContext context) {
  final selectedTheme = Provider.of<AppStateProvider>(context).selectedTheme;
  if (Provider.of<AppStateProvider>(context).selectedTheme == blueTheme) {
    return Colors.blue;
  } else if (selectedTheme == redTheme) {
    return Colors.red;
  } else if (selectedTheme == greenTheme) {
    return Colors.green;
  } else if (selectedTheme == yellowTheme) {
    return Colors.yellow;
  } else if (selectedTheme == purpleTheme) {
    return Colors.purple;
  } else if (selectedTheme == whiteTheme) {
    return Color.fromARGB(179, 182, 182, 182);
  } else {
    return Colors.blue;
  }
}

Color? getColorSecondary(BuildContext context) {
  final selectedTheme = Provider.of<AppStateProvider>(context).selectedTheme;
  if (selectedTheme == blueTheme) {
    return Colors.blue[300];
  } else if (selectedTheme == redTheme) {
    return Colors.red[300];
  } else if (selectedTheme == greenTheme) {
    return Colors.green[300];
  } else if (selectedTheme == yellowTheme) {
    return Colors.yellow[300];
  } else if (selectedTheme == purpleTheme) {
    return Colors.purple[300];
  } else if (selectedTheme == whiteTheme) {
    return Color.fromARGB(179, 226, 226, 226);
  } else {
    return Colors.blue[300];
  }
}
