import 'package:auto_size_text/auto_size_text.dart';
import 'package:clue_notepad/models/app_settings.dart';
import 'package:clue_notepad/ui/theme_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import 'package:provider/provider.dart';

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
    var ktoArrayHasbro = ['Green', 'Mustard', 'Orchid', 'Peacock', 'Plum', 'Scarlett'];
    var czymArrayHasbro = [
      context.l10n?.candlestick,
      context.l10n?.dagger,
      context.l10n?.leadPipe,
      context.l10n?.revolver,
      context.l10n?.rope,
      context.l10n?.wrench
    ];
    var gdzieArrayHasbro = [
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
    var ktoArrayDiscover = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
    var czymArrayDiscover = [
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
    var gdzieArrayDiscover = [
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
    var ktoArrayClassic = ['Green', 'Mustard', 'White', 'Peacock', 'Plum', 'Scarlett'];
    var czymArrayClassic = [
      context.l10n?.candlestick,
      context.l10n?.dagger,
      context.l10n?.leadPipe,
      context.l10n?.revolver,
      context.l10n?.rope,
      context.l10n?.wrench
    ];
    var gdzieArrayClassic = [
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

//Simpsons
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
//Harry Potter
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

    // Get the current selected theme from AppSettings
    final appSettings = Provider.of<AppSettings>(context, listen: false);
    final ThemeData selectedTheme = appSettings.selectedTheme;

    return SingleChildScrollView(
      child: Table(
        border: TableBorder.all(
          width: 2,
          color: Color.fromARGB(255, 65, 65, 65),
        ),
        columnWidths: {
          0: FixedColumnWidth(120),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          TableRow(
            decoration: const BoxDecoration(),
            children: <Widget>[
              Container(
                color: Colors.white,
                alignment: Alignment.center,
                padding: EdgeInsets.all(2.0),
                child: Text(
                  context.l10n!.mansion,
                  style:
                      TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                height: 32,
              ),
              for (int i = 0; i <= widget.numberOfPlayers - 2; i++)
                Container(
                  color: Colors.white,
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
                      hintText: context.l10n?.player,
                      hintStyle: TextStyle(
                          fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                  height: 32,
                ),
              Container(
                color: Colors.white,
                alignment: Alignment.center,
                padding: EdgeInsets.all(2.0),
                child: Text(
                  context.l10n!.you,
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                ),
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
                color: Colors.white,
              ),
            ],
          ),
          if (Provider.of<AppSettings>(context, listen: false).selectedVersion == 1) ...[
            createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
            for (var text in ktoArrayHasbro) createClickableTableRow(text, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
            for (var text in czymArrayHasbro)
              createClickableTableRow(text!, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
            for (var text in gdzieArrayHasbro)
              createClickableTableRow(text!, widget.numberOfPlayers),
          ] else if (Provider.of<AppSettings>(context, listen: false).selectedVersion == 2) ...[
            createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
            for (var text in ktoArrayDiscover)
              createClickableTableRow(text, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
            for (var text in czymArrayDiscover)
              createClickableTableRow(text!, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
            for (var text in gdzieArrayDiscover)
              createClickableTableRow(text!, widget.numberOfPlayers),
          ] else if (Provider.of<AppSettings>(context, listen: false).selectedVersion == 4) ...[
            createSectionTableRow(context.l10n!.who, widget.numberOfPlayers, context),
            for (var text in ktoArraySimpsons)
              createClickableTableRow(text, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
            for (var text in czymArraySimpsons)
              createClickableTableRow(text!, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
            for (var text in gdzieArraySimpsons)
              createClickableTableRow(text!, widget.numberOfPlayers),
          ] else if (Provider.of<AppSettings>(context, listen: false).selectedVersion == 5) ...[
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
            for (var text in ktoArrayClassic) createClickableTableRow(text, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.how, widget.numberOfPlayers, context),
            for (var text in czymArrayClassic)
              createClickableTableRow(text!, widget.numberOfPlayers),
            createSectionTableRow(context.l10n!.where, widget.numberOfPlayers, context),
            for (var text in gdzieArrayClassic)
              createClickableTableRow(text!, widget.numberOfPlayers),
          ]
        ],
      ),
    );
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
            child: AutoSizeText(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              minFontSize: 8,
              maxLines: 2,
            ),
            height: 32,
            color: Colors.white,
          ),
        ),
        for (int i = 0; i <= playersAmount; i++) ClickableTableCell(),
      ],
    );
  }

  TableRow createSectionTableRow(String text, int playersAmount, BuildContext context) {
    // Get the current selected theme from AppSettings
    final appSettings = Provider.of<AppSettings>(context, listen: false);
    final ThemeData selectedTheme = appSettings.selectedTheme;

    return TableRow(
      decoration: BoxDecoration(
        color: selectedTheme.colorScheme.secondary,
      ),
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          height: 32,
          color: selectedTheme.colorScheme.secondary, // Apply primary color here if needed
        ),
        for (int i = 0; i <= playersAmount; i++)
          Container(
            height: 32,
            color: selectedTheme.colorScheme.secondary,
          ),
      ],
    );
  }
}
