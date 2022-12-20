import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'about.dart';

import 'tables.dart';

void main() => runApp(const ClueNotepad());

var selectedVersion;

class ClueNotepad extends StatefulWidget {
  const ClueNotepad({Key key}) : super(key: key);

  static const String _title = 'Clue Notepad';

  @override
  _ClueNotepadState createState() => _ClueNotepadState();
}

class _ClueNotepadState extends State<ClueNotepad> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''), // English,
        Locale('pl', ''), // Polish,
      ],
      title: ClueNotepad._title,
      home: AppContent(),
    );
  }
}

class AppContent extends StatefulWidget {
  @override
  _AppContentState createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
  var playersInitial = 2;

  Future<void> onSelected(BuildContext context, int item) async {
    switch (item) {
      case 0:
        {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(actions: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                            child: Text(AppLocalizations.of(context).clear),
                            onPressed: () =>
                                Navigator.of(context).pop(setState(() {
                                  playersInitial = playersInitial;
                                }))),
                      ],
                    ),
                  ]));
        }
        break;
      case 1:
        {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  backgroundColor: Colors.blue[50],
                  title: FittedBox(
                      child: Text((AppLocalizations.of(context).howmany))),
                  content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('2'),
                                  onPressed: () =>
                                      Navigator.of(context).pop(setState(() {
                                        playersInitial = 2;
                                      })))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('3'),
                                  onPressed: () =>
                                      Navigator.of(context).pop(setState(() {
                                        playersInitial = 3;
                                      })))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('4'),
                                  onPressed: () =>
                                      Navigator.of(context).pop(setState(() {
                                        playersInitial = 4;
                                      })))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('5'),
                                  onPressed: () =>
                                      Navigator.of(context).pop(setState(() {
                                        playersInitial = 5;
                                      })))),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('6'),
                                  onPressed: () =>
                                      Navigator.of(context).pop(setState(() {
                                        playersInitial = 6;
                                      })))),
                        ),
                      ])));
        }
        break;
      case 2:
        {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  backgroundColor: Colors.blue[50],
                  title: Text(AppLocalizations.of(context).choseedition),
                  children: <Widget>[
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(setState(() {
                                  selectedVersion = 1;
                                }));
                              },
                              child: Text(AppLocalizations.of(context).hasbro),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(setState(() {
                                  selectedVersion = 2;
                                }));
                              },
                              child:
                                  Text(AppLocalizations.of(context).discover),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(setState(() {
                                  selectedVersion = 3;
                                }));
                              },
                              child: Text(AppLocalizations.of(context).classic),
                            ))),
                  ],
                );
              });
        }
        break;
      case 3:
        {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => About()));
        }
        break;
      case 4:
        {
          SystemNavigator.pop();
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(ClueNotepad._title),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 0,
                  child: Text(AppLocalizations.of(context).cleartabbles)),
              PopupMenuItem(
                  value: 1,
                  child: Text(AppLocalizations.of(context).setPlayers)),
              PopupMenuItem(
                  value: 2,
                  child: Text(AppLocalizations.of(context).choseedition)),
              PopupMenuItem(
                  value: 3, child: Text(AppLocalizations.of(context).about)),
              PopupMenuItem(
                  value: 4, child: Text(AppLocalizations.of(context).closeapp)),
            ],
          )
        ],
      ),
      body: Notepad('Clue Notepad', playersInitial),
    );
  }
}
