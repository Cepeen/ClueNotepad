import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';

import '../about.dart';
import '../main.dart';
import '../tables.dart';

class AppContent extends StatefulWidget {
  final ThemeData selectedTheme;
  final int selectedVersion;
  final void Function(ThemeData) changeTheme;
  final int playersInitial;

  const AppContent({
    Key key,
    @required this.selectedTheme,
    @required this.selectedVersion,
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
                  title: FittedBox(child: Text((AppLocalizations.of(context).howMany))),
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
                  title: Text(AppLocalizations.of(context).choseEdition),
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
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(setState(() {
                                  selectedVersion = 4;
                                }));
                              },
                              child: Text(AppLocalizations.of(context).theSimpsonsEdition),
                            ))),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop(setState(() {
                                  selectedVersion = 5;
                                }));
                              },
                              child: Text(AppLocalizations.of(context).harryPotterEdition),
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
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        (AppLocalizations.of(context).wipetable),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.red, // You can change the color to match your warning style
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SimpleDialogOption(
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                            width: 20.0,
                            height: 40.0,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue, //background color of button
                                elevation: 3, //elevation of button
                                shape: RoundedRectangleBorder(
                                    //to set border radius to button
                                    ),
                              ),
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
      default:
    }
  }

  static const String _title = 'Clue Notepad';

  @override
  Widget build(BuildContext context) {
    String versionText = AppLocalizations.of(context).classic;
    if (selectedVersion == 1) {
      versionText = AppLocalizations.of(context).hasbro;
    }
    if (selectedVersion == 2) {
      versionText = AppLocalizations.of(context).discover;
    }
    if (selectedVersion == 3) {
      versionText = AppLocalizations.of(context).classic;
    }
    if (selectedVersion == 4) {
      versionText = AppLocalizations.of(context).theSimpsonsEdition;
    }
    if (selectedVersion == 5) {
      versionText = AppLocalizations.of(context).harryPotterEdition;
    }

    return Scaffold(
      appBar: new AppBar(
        centerTitle: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            _title,
            style: TextStyle(
              fontSize: 18.0, // Adjust font size as needed
            ),
          ),
          GestureDetector(
            child: Text(
              versionText,
              style: TextStyle(
                fontSize: 10.0, // Adjust font size as needed
                color: Colors.white, // Assuming you want white color
              ),
            ),
            onTap: () {
              print("");
            },
          )
        ]),
        actions: [
          PopupMenuButton<int>(
            onSelected: (item) => onSelected(context, item),
            itemBuilder: (context) => [
              PopupMenuItem(value: 0, child: Text(AppLocalizations.of(context).clearTabbles)),
              PopupMenuItem(value: 1, child: Text(AppLocalizations.of(context).setPlayers)),
              PopupMenuItem(value: 2, child: Text(AppLocalizations.of(context).choseEdition)),
              PopupMenuItem(value: 3, child: Text(AppLocalizations.of(context).setcolor)),
              PopupMenuItem(value: 4, child: Text(AppLocalizations.of(context).about)),
            ],
          )
        ],
      ),
      body: Notepad('Clue Notepad', playersInitial),
    );
  }
}
