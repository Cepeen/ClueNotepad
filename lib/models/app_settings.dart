import 'package:flutter/material.dart';

import '../ui/global/theme/app_theme.dart';

class AppSettings extends ChangeNotifier {
  ThemeData _selectedTheme = blueTheme;

  ThemeData get selectedTheme => _selectedTheme;

  void changeTheme(ThemeData theme) {
    _selectedTheme = theme;
    notifyListeners();
  }
}
