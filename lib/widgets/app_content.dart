import 'package:clue_notepad/models/app_settings.dart';
import 'package:clue_notepad/ui/theme_extensions.dart';
import 'package:clue_notepad/widgets/clickable_table_cell.dart';
import 'package:clue_notepad/widgets/set_color_dialog_option.dart';
import 'package:clue_notepad/widgets/set_player_dialog_option.dart';
import 'package:flutter/material.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import '../about.dart';
import '../tables.dart';
import 'package:provider/provider.dart';

class AppContent extends StatefulWidget {
  final int selectedVersion;
  final int playersInitial;

  const AppContent({
    Key? key,
    required this.selectedVersion,
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
                          Provider.of<TableRowProvider>(context, listen: false).setIndex(0);
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Yes',
                          style: TextStyle(color: Colors.white),
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
              backgroundColor: context.colorScheme.background,
              title: FittedBox(child: Text((context.l10n!.howMany))),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [...List.generate(6, (i) => SetPlayersDialogOption(i))],
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
                return SimpleDialog(
                  title: Text(context.l10n!.choseEdition),
                  children: <Widget>[
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<AppSettings>(context, listen: false).changeVersion(1);
                                  Navigator.of(context).pop((() {}));
                                });
                              },
                              child: Text(context.l10n!.hasbro),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<AppSettings>(context, listen: false).changeVersion(2);
                                  Navigator.of(context).pop((() {}));
                                });
                              },
                              child: Text(context.l10n!.discover),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<AppSettings>(context, listen: false).changeVersion(3);
                                  Navigator.of(context).pop((() {}));
                                });
                              },
                              child: Text(context.l10n!.classic),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<AppSettings>(context, listen: false).changeVersion(4);
                                  Navigator.of(context).pop((() {}));
                                });
                              },
                              child: Text(context.l10n!.theSimpsonsEdition),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  Provider.of<AppSettings>(context, listen: false).changeVersion(5);
                                  Navigator.of(context).pop((() {}));
                                });
                              },
                              child: Text(context.l10n!.harryPotterEdition),
                            ))),
                  ],
                );
              });
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
                  ),
                  SetColorDialogOption(
                    theme: redTheme,
                  ),
                  SetColorDialogOption(
                    theme: greenTheme,
                  ),
                  SetColorDialogOption(
                    theme: yellowTheme,
                  ),
                  SetColorDialogOption(
                    theme: purpleTheme,
                  ),
                  SetColorDialogOption(
                    theme: whiteTheme,
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

  String _versionTitle(int version) {
    switch (version) {
      case 1:
        return context.l10n!.hasbro;
      case 2:
        return context.l10n!.discover;
      case 3:
        return context.l10n!.classic;
      case 4:
        return context.l10n!.theSimpsonsEdition;
      case 5:
        return context.l10n!.harryPotterEdition;
      default:
        return context.l10n!.classic;
    }
  }

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
              _versionTitle(Provider.of<AppSettings>(context).selectedVersion),
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
      body: Notepad(_title, Provider.of<AppSettings>(context).playersInitial),
    );
  }
}
