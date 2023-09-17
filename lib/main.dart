import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import 'widgets/app_content.dart';

void main() => runApp(const ClueNotepad());
var selectedTheme = blueTheme;
var selectedVersion;
var playersInitial = 2; //Default amount of players - creates 3 columns

class ClueNotepad extends StatefulWidget {
  const ClueNotepad({Key key}) : super(key: key);

  static const String _title = 'Clue Notepad';

  @override
  _ClueNotepadState createState() => _ClueNotepadState();
}

class _ClueNotepadState extends State<ClueNotepad> {
  void changeTheme(ThemeData theme) {
    setState(() {
      selectedTheme = theme;
    });
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
      ],
      title: ClueNotepad._title,
      home: AppContent(
        selectedTheme: selectedTheme,
        changeTheme: changeTheme,
        playersInitial: playersInitial,
      ),
      theme: selectedTheme,
    );
  }
}
