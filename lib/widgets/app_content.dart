import 'package:clue_notepad/widgets/clickable_table_cell.dart';
import 'package:flutter/material.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import '../main.dart';
import '../about.dart';
import '../tables.dart';
import 'package:provider/provider.dart';

class AppContent extends StatefulWidget {
  final ThemeData selectedTheme;
  final int selectedVersion;
  final void Function(ThemeData) changeTheme;
  final int playersInitial;

  const AppContent({
    Key? key,
    required this.selectedTheme,
    required this.selectedVersion,
    required this.changeTheme,
    required this.playersInitial,
    required void Function(int version) changeVersion,
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
                      content: Column(mainAxisSize: MainAxisSize.min, children: [
                    SizedBox(height: 16), // Add space above the text
                    Text(
                      context.l10n!.areyousure,
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 16), // Add space below the text
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
                              // Handle 'No' button press here
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'No',
                              style: TextStyle(color: Colors.white),
                            ))
                      ],
                    ),
                  ])));
        }
        break;
      //SETTING PLAYERS
      case 1:
        {
          showDialog(
              context: context,
              builder: (context) => AlertDialog(
                  backgroundColor: Colors.blue[50],
                  title: FittedBox(child: Text((context.l10n!.howMany))),
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
                                  onPressed: () {
                                    setState(() {
                                      Provider.of<AppStateProvider>(context, listen: false)
                                          .setPlayersInitial(2); // Update playersInitial here
                                    });
                                    Navigator.of(context).pop();
                                  }),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('3'),
                                  onPressed: () {
                                    setState(() {
                                      Provider.of<AppStateProvider>(context, listen: false)
                                          .setPlayersInitial(3); // Update playersInitial here
                                    });
                                    Navigator.of(context).pop();
                                  }),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('4'),
                                  onPressed: () {
                                    setState(() {
                                      Provider.of<AppStateProvider>(context, listen: false)
                                          .setPlayersInitial(4); // Update playersInitial here
                                    });
                                    Navigator.of(context).pop();
                                  }),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('5'),
                                  onPressed: () {
                                    setState(() {
                                      Provider.of<AppStateProvider>(context, listen: false)
                                          .setPlayersInitial(5); // Update playersInitial here
                                    });
                                    Navigator.of(context).pop();
                                  }),
                            )),
                        Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: ElevatedButton(
                                  child: Text('6'),
                                  onPressed: () {
                                    setState(() {
                                      Provider.of<AppStateProvider>(context, listen: false)
                                          .setPlayersInitial(6); // Update playersInitial here
                                    });
                                    Navigator.of(context).pop();
                                  }),
                            )),
                      ])));
        }
        break;
      //SETTING VERSION
      case 2:
        {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return SimpleDialog(
                  backgroundColor: Colors.blue[50],
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
                                  Provider.of<AppStateProvider>(context, listen: false)
                                      .changeVersion(1);
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
                                  Provider.of<AppStateProvider>(context, listen: false)
                                      .changeVersion(2);
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
                                  Provider.of<AppStateProvider>(context, listen: false)
                                      .changeVersion(3);
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
                                  Provider.of<AppStateProvider>(context, listen: false)
                                      .changeVersion(4);
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
                                  Provider.of<AppStateProvider>(context, listen: false)
                                      .changeVersion(5);
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
                  backgroundColor: Colors.blue[50],
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        (context.l10n!.setcolor),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color.fromARGB(
                              255, 0, 0, 0), // You can change the color to match your warning style
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
                              child: Text(context.l10n!.blue),
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
                              child: Text(context.l10n!.red),
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
                              child: Text(context.l10n!.green),
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
                              child: Text(context.l10n!.yellow,
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
                              child: Text(context.l10n!.purple),
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
                              child: Text(context.l10n!.white,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                            ))),
                  ],
                );
              });
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
    String versionText = context.l10n!.classic;
    if (Provider.of<AppStateProvider>(context).selectedVersion == 1) {
      versionText = context.l10n!.hasbro;
    }
    if (Provider.of<AppStateProvider>(context).selectedVersion == 2) {
      versionText = context.l10n!.discover;
    }
    if (Provider.of<AppStateProvider>(context).selectedVersion == 3) {
      versionText = context.l10n!.classic;
    }
    if (Provider.of<AppStateProvider>(context).selectedVersion == 4) {
      versionText = context.l10n!.theSimpsonsEdition;
    }
    if (Provider.of<AppStateProvider>(context).selectedVersion == 5) {
      versionText = context.l10n!.harryPotterEdition;
    }

    return Scaffold(
      appBar: new AppBar(
        centerTitle: false,
        title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            _title,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          GestureDetector(
            child: Text(
              versionText,
              style: TextStyle(
                fontSize: 10.0,
                color: Colors.white,
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
              PopupMenuItem(value: 0, child: Text(context.l10n!.clearTabbles)),
              PopupMenuItem(value: 1, child: Text(context.l10n!.setPlayers)),
              PopupMenuItem(value: 2, child: Text(context.l10n!.choseEdition)),
              PopupMenuItem(value: 3, child: Text(context.l10n!.setcolor)),
              PopupMenuItem(value: 4, child: Text(context.l10n!.about)),
            ],
          )
        ],
      ),
      body: Notepad('Clue Notepad', Provider.of<AppStateProvider>(context).playersInitial),
    );
  }
}