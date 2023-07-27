import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'about.dart';
import 'package:notepad/ui/global/theme/app_theme.dart';
import 'tables.dart';

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

class AppContent extends StatefulWidget {
  final ThemeData selectedTheme;
  final void Function(ThemeData) changeTheme;
  final int playersInitial;

  const AppContent({
    Key key,
    @required this.selectedTheme,
    @required this.changeTheme,
    @required this.playersInitial,
  }) : super(key: key);

  @override
  _AppContentState createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
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
                            onPressed: () => Navigator.of(context).pop(setState(() {
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
                  title: FittedBox(child: Text((AppLocalizations.of(context).howmany))),
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
                                  onPressed: () => Navigator.of(context).pop(setState(() {
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
                                  onPressed: () => Navigator.of(context).pop(setState(() {
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
                                  onPressed: () => Navigator.of(context).pop(setState(() {
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
                                  onPressed: () => Navigator.of(context).pop(setState(() {
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
                                  onPressed: () => Navigator.of(context).pop(setState(() {
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
                              child: Text(AppLocalizations.of(context).discover),
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
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  backgroundColor: Colors.blue[50],
                  children: <Widget>[
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 20.0,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue, //background color of button
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(//to set border radius to button
                                      )),
                              onPressed: () {
                                widget.changeTheme(blueTheme);
                                Navigator.of(context).pop();
                              },
                              child: Text(AppLocalizations.of(context).blue),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red, //background color of button
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(//to set border radius to button
                                      )),
                              onPressed: () {
                                widget.changeTheme(redTheme);
                                Navigator.of(context).pop();
                              },
                              child: Text(AppLocalizations.of(context).red),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green, //background color of button
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(//to set border radius to button
                                      )),
                              onPressed: () {
                                widget.changeTheme(greenTheme);
                                Navigator.of(context).pop();
                              },
                              child: Text(AppLocalizations.of(context).green),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 20.0,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.yellow, //background color of button
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(//to set border radius to button
                                      )),
                              onPressed: () {
                                widget.changeTheme(yellowTheme);
                                Navigator.of(context).pop();
                              },
                              child: Text(AppLocalizations.of(context).yellow,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 20.0,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.purple, //background color of button
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(//to set border radius to button
                                      )),
                              onPressed: () {
                                widget.changeTheme(purpleTheme);
                                Navigator.of(context).pop();
                              },
                              child: Text(AppLocalizations.of(context).purple),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 20.0,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, //background color of button
                                  elevation: 3, //elevation of button
                                  shape: RoundedRectangleBorder(//to set border radius to button
                                      )),
                              onPressed: () {
                                widget.changeTheme(whiteTheme);
                                Navigator.of(context).pop();
                              },
                              child: Text(AppLocalizations.of(context).white,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            ))),
                  ],
                );
              });
        }
        break;
      case 4:
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
        }
        break;
      case 5:
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
              PopupMenuItem(value: 0, child: Text(AppLocalizations.of(context).cleartabbles)),
              PopupMenuItem(value: 1, child: Text(AppLocalizations.of(context).setPlayers)),
              PopupMenuItem(value: 2, child: Text(AppLocalizations.of(context).choseedition)),
              PopupMenuItem(value: 3, child: Text(AppLocalizations.of(context).setcolor)),
              PopupMenuItem(value: 4, child: Text(AppLocalizations.of(context).about)),
              PopupMenuItem(value: 5, child: Text(AppLocalizations.of(context).closeapp)),
            ],
          )
        ],
      ),
      body: Notepad('Clue Notepad', playersInitial),
    );
  }
}
