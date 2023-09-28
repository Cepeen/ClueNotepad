import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';

import 'main.dart';
import 'widgets/clickable_table_cell.dart';

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
//hasbro
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

//discover the secret
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
      AppLocalizations.of(context).guestHouse,
      AppLocalizations.of(context).theatre,
      AppLocalizations.of(context).spa,
      AppLocalizations.of(context).diningRoom,
      AppLocalizations.of(context).hall,
      AppLocalizations.of(context).kitchen,
      AppLocalizations.of(context).livingroom,
      AppLocalizations.of(context).weranda,
      AppLocalizations.of(context).observatory
    ];

//classic
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

//simpsons
    var ktoArraySimpsons = ['Homer', 'Marge', 'Bart', 'Lisa', 'Maggie', 'Ned Flanders'];
    var czymArraySimpsons = [
      AppLocalizations.of(context).donut,
      AppLocalizations.of(context).slingshot,
      AppLocalizations.of(context).saxophone,
      AppLocalizations.of(context).tvRemote,
      AppLocalizations.of(context).beehive,
      AppLocalizations.of(context).bowlingBall,
      AppLocalizations.of(context).krustyBurger
    ];

    var gdzieArraySimpsons = [
      AppLocalizations.of(context).simpsonLivingRoom,
      AppLocalizations.of(context).moesTavern,
      AppLocalizations.of(context).kwikEMart,
      AppLocalizations.of(context).springfieldElementarySchool,
      AppLocalizations.of(context).springfieldNuclearPowerPlant,
      AppLocalizations.of(context).flandersHouse,
      AppLocalizations.of(context).krustyland
    ];

    var ktoArrayHarryPotter = [
      'Harry Potter',
      'Hermione Granger',
      'Ron Weasley',
      'Ginny Weasley',
      'Draco Malfoy',
      'Luna Lovegood',
      'Nymphadora Tonks'
    ];

    var czymArrayHarryPotter = [
      AppLocalizations.of(context).wand,
      AppLocalizations.of(context).broomstick,
      AppLocalizations.of(context).potion,
      AppLocalizations.of(context).spellbook,
      AppLocalizations.of(context).cauldron,
      AppLocalizations.of(context).invisibilityCloak,
      AppLocalizations.of(context).timeTurner
    ];

    var gdzieArrayHarryPotter = [
      AppLocalizations.of(context).gryffindorCommonRoom,
      AppLocalizations.of(context).slytherinCommonRoom,
      AppLocalizations.of(context).ravenclawCommonRoom,
      AppLocalizations.of(context).hufflepuffCommonRoom,
      AppLocalizations.of(context).greatHall,
      AppLocalizations.of(context).forbiddenForest,
      AppLocalizations.of(context).whompingWillow,
      AppLocalizations.of(context).roomOfRequirement
    ];

    return SingleChildScrollView(
      child: Table(
          border: TableBorder.all(width: 2, color: Color.fromARGB(255, 131, 131, 131)),
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
                  child: Text(AppLocalizations.of(context).you,
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                  height: 32,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(2.0),
                    child: FittedBox(
                      child: Text('Notes',
                          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    ),
                    height: 32,
                    color: Colors.white),
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
            ] else if (selectedVersion == 4) ...[
              createSectionTableRow(AppLocalizations.of(context).who, widget.numberOfPlayers),
              for (var text in ktoArraySimpsons)
                createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).how, widget.numberOfPlayers),
              for (var text in czymArraySimpsons)
                createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).where, widget.numberOfPlayers),
              for (var text in gdzieArraySimpsons)
                createClickableTableRow(text, widget.numberOfPlayers),
            ] else if (selectedVersion == 5) ...[
              createSectionTableRow(AppLocalizations.of(context).who, widget.numberOfPlayers),
              for (var text in ktoArrayHarryPotter)
                createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).how, widget.numberOfPlayers),
              for (var text in czymArrayHarryPotter)
                createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(AppLocalizations.of(context).where, widget.numberOfPlayers),
              for (var text in gdzieArrayHarryPotter)
                createClickableTableRow(text, widget.numberOfPlayers),
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
          child: AutoSizeText(text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              minFontSize: 8,
              maxLines: 2),
          height: 32,
          color: Colors.white,
        ),
      ),
      for (int i = 0; i <= playersAmount; i++) ClickableTableCell(),
    ],
  );
}

Color getColorPrimary() {
  if (selectedTheme == blueTheme) {
    return Colors.blue;
  } else if (selectedTheme == redTheme) {
    return Colors.red;
  } else if (selectedTheme == greenTheme) {
    return Colors.green;
  } else if (selectedTheme == yellowTheme) {
    return Colors.yellow;
  } else if (selectedTheme == purpleTheme) {
    return Colors.purple;
  } else if (selectedTheme == whiteTheme) {
    return Color.fromARGB(179, 182, 182, 182);
  } else {
    return Colors.blue;
  }
}

Color getColorSecondary() {
  if (selectedTheme == blueTheme) {
    return Colors.blue[300];
  } else if (selectedTheme == redTheme) {
    return Colors.red[300];
  } else if (selectedTheme == greenTheme) {
    return Colors.green[300];
  } else if (selectedTheme == yellowTheme) {
    return Colors.yellow[300];
  } else if (selectedTheme == purpleTheme) {
    return Colors.purple[300];
  } else if (selectedTheme == whiteTheme) {
    return Color.fromARGB(179, 226, 226, 226);
  } else {
    return Colors.blue[300];
  }
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
          color: getColorPrimary()),
      for (int i = 0; i <= playersAmount; i++) Container(height: 32, color: getColorSecondary()),
    ],
  );
}
