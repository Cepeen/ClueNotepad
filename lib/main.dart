import 'package:clue_notepad/widgets/clickable_table_cell.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import 'package:provider/provider.dart';
import 'widgets/app_content.dart';
export 'package:shared_preferences/shared_preferences.dart';

class AppStateProvider extends ChangeNotifier {
  TableRowProvider _tableRowProvider = TableRowProvider(); // Create an instance

  TableRowProvider get tableRowProvider => _tableRowProvider;
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

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppStateProvider()),
          ChangeNotifierProvider(create: (_) => TableRowProvider()), // Add this line
        ],
        child: ClueNotepad(),
      ),
    );

class ClueNotepad extends StatefulWidget {
  const ClueNotepad({Key? key}) : super(key: key);

  static const String _title = 'Clue Notepad';

  @override
  _ClueNotepadState createState() => _ClueNotepadState();
}

class _ClueNotepadState extends State<ClueNotepad> {
  void changeTheme(ThemeData theme) {
    Provider.of<AppStateProvider>(context, listen: false).changeTheme(theme);
  }

  void changeVersion(int version) {
    Provider.of<AppStateProvider>(context, listen: false).changeVersion(version);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('pl', ''),
        Locale('de', ''),
        Locale('fr', ''),
      ],
      title: ClueNotepad._title,
      home: AppContent(
        selectedVersion: Provider.of<AppStateProvider>(context, listen: false).selectedVersion,
        selectedTheme: Provider.of<AppStateProvider>(context, listen: false).selectedTheme,
        playersInitial: Provider.of<AppStateProvider>(context, listen: false).playersInitial,
        changeTheme: changeTheme,
        changeVersion: changeVersion,
      ),
      theme: Provider.of<AppStateProvider>(context).selectedTheme,
    );
  }
}


