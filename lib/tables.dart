import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import 'package:provider/provider.dart';

import 'main.dart';
import 'widgets/clickable_table_cell.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations? get l10n => AppLocalizations.of(this);
}

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
      context.l10n?.candlestick,
      context.l10n?.dagger,
      context.l10n?.leadPipe,
      context.l10n?.revolver,
      context.l10n?.rope,
      context.l10n?.wrench
    ];
    var gdzieArray = [
      context.l10n?.lounge,
      context.l10n?.billiardRoom,
      context.l10n?.conservatory,
      context.l10n?.diningRoom,
      context.l10n?.hall,
      context.l10n?.kitchen,
      context.l10n?.library,
      context.l10n?.weranda,
      context.l10n?.study
    ];

//discover the secret
    var ktoArray2 = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
    var czymArray2 = [
      context.l10n?.candlestick,
      context.l10n?.axe,
      context.l10n?.poison,
      context.l10n?.trophy,
      context.l10n?.knife,
      context.l10n?.bat,
      context.l10n?.pistol,
      context.l10n?.rope,
      context.l10n?.dumbbell
    ];
    var gdzieArray2 = [
      context.l10n?.guestHouse,
      context.l10n?.theatre,
      context.l10n?.spa,
      context.l10n?.diningRoom,
      context.l10n?.hall,
      context.l10n?.kitchen,
      context.l10n?.livingroom,
      context.l10n?.weranda,
      context.l10n?.observatory
    ];

//classic
    var ktoArray3 = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
    var czymArray3 = [
      context.l10n?.candlestick,
      context.l10n?.dagger,
      context.l10n?.leadPipe,
      context.l10n?.revolver,
      context.l10n?.rope,
      context.l10n?.wrench
    ];
    var gdzieArray3 = [
      context.l10n?.lounge,
      context.l10n?.cellar,
      context.l10n?.billiardRoom,
      context.l10n?.conservatory,
      context.l10n?.diningRoom,
      context.l10n?.hall,
      context.l10n?.kitchen,
      context.l10n?.library,
      context.l10n?.ballroom,
      context.l10n?.study
    ];

//simpsons
    var ktoArraySimpsons = ['Homer', 'Marge', 'Bart', 'Lisa', 'Maggie', 'Ned Flanders'];
    var czymArraySimpsons = [
      context.l10n?.donut,
      context.l10n?.slingshot,
      context.l10n?.saxophone,
      context.l10n?.tvRemote,
      context.l10n?.beehive,
      context.l10n?.bowlingBall,
      context.l10n?.krustyBurger
    ];

    var gdzieArraySimpsons = [
      context.l10n?.simpsonLivingRoom,
      context.l10n?.moesTavern,
      context.l10n?.kwikEMart,
      context.l10n?.springfieldElementarySchool,
      context.l10n?.springfieldNuclearPowerPlant,
      context.l10n?.flandersHouse,
      context.l10n?.krustyland
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
      context.l10n?.wand,
      context.l10n?.broomstick,
      context.l10n?.potion,
      context.l10n?.spellbook,
      context.l10n?.cauldron,
      context.l10n?.invisibilityCloak,
      context.l10n?.timeTurner
    ];

    var gdzieArrayHarryPotter = [
      context.l10n?.gryffindorCommonRoom,
      context.l10n?.slytherinCommonRoom,
      context.l10n?.ravenclawCommonRoom,
      context.l10n?.hufflepuffCommonRoom,
      context.l10n?.greatHall,
      context.l10n?.forbiddenForest,
      context.l10n?.whompingWillow,
      context.l10n?.roomOfRequirement
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
                  child: Text(context.l10n!.mansion,
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
                            hintText: context.l10n?.player)),
                    height: 32,
                  ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(2.0),
                  child: Text(context.l10n!.you,
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
            if (Provider.of<AppStateProvider>(context, listen: false).selectedVersion == 1) ...[
              createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
              for (var text in ktoArray) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
              for (var text in czymArray) createClickableTableRow(text!, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
              for (var text in gdzieArray) createClickableTableRow(text!, widget.numberOfPlayers),
            ] else if (Provider.of<AppStateProvider>(context, listen: false).selectedVersion == 2) ...[
              createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
              for (var text in ktoArray2) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
              for (var text in czymArray2) createClickableTableRow(text!, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
              for (var text in gdzieArray2) createClickableTableRow(text!, widget.numberOfPlayers),
            ] else if (Provider.of<AppStateProvider>(context, listen: false).selectedVersion == 4) ...[
              createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
              for (var text in ktoArraySimpsons)
                createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
              for (var text in czymArraySimpsons)
                createClickableTableRow(text!, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
              for (var text in gdzieArraySimpsons)
                createClickableTableRow(text!, widget.numberOfPlayers),
            ] else if (Provider.of<AppStateProvider>(context, listen: false).selectedVersion == 5) ...[
              createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
              for (var text in ktoArrayHarryPotter)
                createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
              for (var text in czymArrayHarryPotter)
                createClickableTableRow(text!, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
              for (var text in gdzieArrayHarryPotter)
                createClickableTableRow(text!, widget.numberOfPlayers),
            ] else ...[
              createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
              for (var text in ktoArray3) createClickableTableRow(text, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
              for (var text in czymArray3) createClickableTableRow(text!, widget.numberOfPlayers),
              createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
              for (var text in gdzieArray3) createClickableTableRow(text!, widget.numberOfPlayers),
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

Color getColorPrimary(BuildContext context) {
  final selectedTheme = Provider.of<AppStateProvider>(context).selectedTheme;
  if (Provider.of<AppStateProvider>(context).selectedTheme == blueTheme) {
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

Color? getColorSecondary(BuildContext context) {
  final selectedTheme = Provider.of<AppStateProvider>(context).selectedTheme;
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

TableRow createSectionTableRow(String text, int playersAmount, BuildContext context) {
  return TableRow(
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(2.0),
        child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        height: 32,
        color: getColorPrimary(context), // Use getColorPrimary with context
      ),
      for (int i = 0; i <= playersAmount; i++)
        Container(
            height: 32, color: getColorSecondary(context)), // Use getColorSecondary with context
    ],
  );
}