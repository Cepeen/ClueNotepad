import 'package:clue_notepad/models/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'models/game_type.dart';
import 'widgets/app_content.dart';

void main() => runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => AppSettings()),
          ChangeNotifierProvider(create: (_) => GameState()),
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
  @override
  Widget build(BuildContext context) {
    final appState = context.watch<AppSettings>();
    final gameState = context.watch<GameState>();
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
        playersInitial: gameState.players,
      ),
      theme: appState.selectedTheme,
    );
  }
}
