import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'main.dart';

class Notepad extends StatefulWidget {
  Notepad(this.title, this.numberOfPlayers);
  final String title;
  final int numberOfPlayers;

  @override
  _NotepadState createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  @override
  Widget build(BuildContext context) {
    var ktoArray = ['Green', 'Mustard', 'Orchid', 'Peacock', 'Plum', 'Scarlett'];
    var czymArray = [
      AppLocalizations.of(context).candlestick,
      AppLocalizations.of(context).dagger,
      AppLocalizations.of(context).leadPipe,
      AppLocalizations.of(context).revolver,
      AppLocalizations.of(context).rope,
      AppLocalizations.of(context).wrench
    ];
    var gdzieArray = [
      AppLocalizations.of(context).lounge,
      AppLocalizations.of(context).billiardRoom,
      AppLocalizations.of(context).conservatory,
      AppLocalizations.of(context).diningRoom,
      AppLocalizations.of(context).hall,
      AppLocalizations.of(context).kitchen,
      AppLocalizations.of(context).library,
      AppLocalizations.of(context).weranda,
      AppLocalizations.of(context).study
    ];

    var ktoArray2 = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
    var czymArray2 = [
      AppLocalizations.of(context).candlestick,
      AppLocalizations.of(context).axe,
      AppLocalizations.of(context).poison,
      AppLocalizations.of(context).trophy,
      AppLocalizations.of(context).knife,
      AppLocalizations.of(context).bat,
      AppLocalizations.of(context).pistol,
      AppLocalizations.of(context).rope,
      AppLocalizations.of(context).dumbbell
    ];
    var gdzieArray2 = [
      AppLocalizations.of(context).guesthouse,
      AppLocalizations.of(context).theatre,
      AppLocalizations.of(context).spa,
      AppLocalizations.of(context).diningRoom,
      AppLocalizations.of(context).hall,
      AppLocalizations.of(context).kitchen,
      AppLocalizations.of(context).livingroom,
      AppLocalizations.of(context).weranda,
      AppLocalizations.of(context).observatory
    ];

    var ktoArray3 = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
    var czymArray3 = [
      AppLocalizations.of(context).candlestick,
      AppLocalizations.of(context).dagger,
      AppLocalizations.of(context).leadPipe,
      AppLocalizations.of(context).revolver,
      AppLocalizations.of(context).rope,
      AppLocalizations.of(context).wrench
    ];
    var gdzieArray3 = [
      AppLocalizations.of(context).lounge,
      AppLocalizations.of(context).cellar,
      AppLocalizations.of(context).billiardRoom,
      AppLocalizations.of(context).conservatory,
      AppLocalizations.of(context).diningRoom,
      AppLocalizations.of(context).hall,
      AppLocalizations.of(context).kitchen,
      AppLocalizations.of(context).library,
      AppLocalizations.of(context).ballroom,
      AppLocalizations.of(context).study
    ];

    return SingleChildScrollView(
      child: Table(
          border: TableBorder.all(width: 2, color: Colors.pink),
          columnWidths: {
            0: FixedColumnWidth(120),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[
            TableRow(
              decoration: const BoxDecoration(),
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2.0),
                    child: Text(AppLocalizations.of(context).mansion,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    height: 32,
                    color: Color.fromARGB(255, 175, 76, 153)),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2.0),
                  child: Text(AppLocalizations.of(context).you,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                  height: 32,
                ),
                for (int i = 0; i <= widget.numberOfPlayers - 2; i++)
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2.0),
                    child: TextField(
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 3, bottom: 10, top: 0, right: 3),
                            hintText: AppLocalizations.of(context).player)),
                    height: 32,
                  ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2.0),
                    child: FittedBox(
                      child: Text('Notes',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    ),
                    height: 32,
                    color: Colors.purple),
              ],
            ),
            if (selectedVersion == 1) ...[
              createSectionTableRow(AppLocalizations.of(context).who, widget.numberOfPlayers),
              for (var text in ktoArray) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).how, widget.numberOfPlayers),
              for (var text in czymArray) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).where, widget.numberOfPlayers),
              for (var text in gdzieArray) createClickableTableRow(text, widget.numberOfPlayers),
            ] else if (selectedVersion == 2) ...[
              createSectionTableRow(AppLocalizations.of(context).who, widget.numberOfPlayers),
              for (var text in ktoArray2) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).how, widget.numberOfPlayers),
              for (var text in czymArray2) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).where, widget.numberOfPlayers),
              for (var text in gdzieArray2) createClickableTableRow(text, widget.numberOfPlayers),
            ] else ...[
              createSectionTableRow(AppLocalizations.of(context).who, widget.numberOfPlayers),
              for (var text in ktoArray3) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).how, widget.numberOfPlayers),
              for (var text in czymArray3) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).where, widget.numberOfPlayers),
              for (var text in gdzieArray3) createClickableTableRow(text, widget.numberOfPlayers),
            ]
          ]),
    );
  }
}

TableRow createClickableTableRow(String text, int playersAmount) {
  return TableRow(
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    children: <Widget>[
      GestureDetector(
        onDoubleTap: () {},
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          height: 32,
          color: Colors.white,
        ),
      ),
      for (int i = 0; i <= playersAmount; i++) ClickableTableCell(),
    ],
  );
}

TableRow createSectionTableRow(String text, int playersAmount) {
  return TableRow(
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(2.0),
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        height: 32,
        color: Colors.lightBlue,
      ),
      for (int i = 0; i <= playersAmount; i++)
        Container(
          height: 32,
          color: Colors.yellow,
        ),
    ],
  );
}

class ClickableTableCell extends StatefulWidget {
  ClickableTableCell();
  final key = GlobalKey();
  @override
  _ClickableTableCellState createState() => _ClickableTableCellState();
}

class _ClickableTableCellState extends State<ClickableTableCell> {
  int index = 0;

  Widget build(BuildContext context) {
    return TableRowInkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (
              BuildContext context,
            ) {
              return AlertDialog(backgroundColor: Colors.blue[50], actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(Icons.check),
                        onPressed: () => Navigator.of(context).pop(setState(() {
                              index = 1;
                            }))),
                    IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => Navigator.of(context).pop(setState(() {
                              index = 2;
                            }))),
                    IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () => Navigator.of(context).pop(setState(() {
                              index = 3;
                            }))),
                    TextButton(
                        child: Text(AppLocalizations.of(context).clear),
                        onPressed: () => Navigator.of(context).pop(setState(() {
                              index = 0;
                            })))
                  ],
                ),
              ]);
            });
      },
      child: Container(
        height: 32,
        child: Center(
            child: index == 0
                ? Container()
                : index == 1
                    ? Icon(Icons.check)
                    : index == 2
                        ? Icon(Icons.close)
                        : index == 3
                            ? Icon(Icons.help)
                            : Container()),
      ),
    );
  }
}
