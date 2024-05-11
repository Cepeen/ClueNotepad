import 'package:clue_notepad/ui/theme_extensions.dart';
import 'package:clue_notepad/utils/build_context_extensions.dart';
import 'package:clue_notepad/widgets/chose_edition_dialog.dart';
import 'package:clue_notepad/widgets/set_color_dialog_option.dart';
import 'package:clue_notepad/widgets/set_player_dialog_option.dart';
import 'package:flutter/material.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import '../about.dart';
import '../models/game_type.dart';
import '../tables.dart';
import 'package:provider/provider.dart';

class AppContent extends StatefulWidget {
  final int playersInitial;

  const AppContent({
    Key? key,
    required this.playersInitial,
  }) : super(key: key);

  @override
  _AppContentState createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  Future<void> onSelected(BuildContext context, int item) async {
    switch (item) {
      //RESETTING TABLES
      case 0:
        {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 16),
                  Text(
                    context.l10n!.areyousure,
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          context.read<GameState>().resetGame();
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                        ),
                      ),
                      SizedBox(width: 18),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'No',
                            style: TextStyle(color: Colors.white),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        break;
      //SETTING PLAYERS
      case 1:
        {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: FittedBox(child: Text((context.l10n!.howMany))),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [...List.generate(5, (i) => SetPlayersDialogOption(i + 2))],
              ),
            ),
          );
        }
        break;
      //SETTING VERSION
      case 2:
        {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return ChooseEditionDialog();
            },
          );
        }
        break;
      //SETTING COLORS
      case 3:
        {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return SimpleDialog(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      (context.l10n!.setcolor),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SetColorDialogOption(
                    theme: blueTheme,
                    buttonColor: Colors.blue,
                    buttonText: context.l10n!.blue,
                  ),
                  SetColorDialogOption(
                    theme: redTheme,
                    buttonColor: Colors.red,
                    buttonText: context.l10n!.red,
                  ),
                  SetColorDialogOption(
                    theme: greenTheme,
                    buttonColor: Colors.green,
                    buttonText: context.l10n!.green,
                  ),
                  SetColorDialogOption(
                    theme: yellowTheme,
                    buttonColor: Colors.yellow,
                    buttonText: context.l10n!.yellow,
                  ),
                  SetColorDialogOption(
                    theme: purpleTheme,
                    buttonColor: Colors.purple,
                    buttonText: context.l10n!.purple,
                  ),
                  SetColorDialogOption(
                    theme: whiteTheme,
                    buttonColor: Colors.white,
                    buttonText: context.l10n!.white,
                  ),
                ],
              );
            },
          );
        }
        break;

      //ABOUT SECTION
      case 4:
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
        }
        break;
      default:
    }
  }

  static const String _title = 'Clue Notepad';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _title,
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            Text(
              _gameTitle(Provider.of<GameState>(context).selectedVersion),
              style: TextStyle(
                fontSize: 10.0,
              ),
            )
          ],
        ),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem(value: 0, child: Text(context.l10n!.clearTabbles)),
              PopupMenuItem(value: 1, child: Text(context.l10n!.setPlayers)),
              PopupMenuItem(value: 2, child: Text(context.l10n!.choseEdition)),
              PopupMenuItem(value: 3, child: Text(context.l10n!.setcolor)),
              PopupMenuItem(value: 4, child: Text(context.l10n!.about)),
            ],
          )
        ],
      ),
      body: Notepad(_title, Provider.of<GameState>(context).players),
    );
  }

  String _gameTitle(GameType gameType) {
    switch (gameType) {
      case GameType.hasbro:
        return context.l10n!.hasbro;
      case GameType.discoverSecret:
        return context.l10n!.discover;
      case GameType.classic:
        return context.l10n!.classic;
      case GameType.simpsons:
        return context.l10n!.theSimpsonsEdition;
      case GameType.harryPotter:
        return context.l10n!.harryPotterEdition;
      default:
        return context.l10n!.classic;
    }
  }
}
