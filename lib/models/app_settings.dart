import 'package:flutter/material.dart';

import '../ui/global/theme/app_theme.dart';

class AppSettings extends ChangeNotifier {
  ThemeData _selectedTheme = blueTheme;
  int _selectedVersion = 3;
  int _playersInitial = 2;

  ThemeData get selectedTheme => _selectedTheme;
  int get selectedVersion => _selectedVersion;
  int get playersInitial => _playersInitial;

  void changeTheme(ThemeData theme) {
    _selectedTheme = theme;
    notifyListeners();
  }

  void changeVersion(int i) {
    _selectedVersion = i;
    notifyListeners();
  }

  void setPlayersInitial(int i) {
    _playersInitial = i;
    notifyListeners();
  }
}
