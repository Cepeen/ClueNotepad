import 'package:auto_size_text/auto_size_text.dart';
import 'package:clue_notepad/models/app_settings.dart';
import 'package:clue_notepad/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/game_type.dart';
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
    final gameState = context.watch<GameState>();

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
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                height: 32,
              ),
              for (int i = 0; i < widget.numberOfPlayers - 1; i++)
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
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0),
                      ),
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
                  child: Text(
                    'Notes',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                height: 32,
                color: Colors.white,
              ),
            ],
          ),
          createSectionTableRow(context.l10n!.who, gameState.players, context),
          for (var text in gameState.selectedVersion.suspects(context))
            createClickableTableRow(text, widget.numberOfPlayers, gameState.gameStartTime),
          createSectionTableRow(context.l10n!.how, gameState.players, context),
          for (var text in gameState.selectedVersion.weapons(context))
            createClickableTableRow(text!, widget.numberOfPlayers, gameState.gameStartTime),
          createSectionTableRow(context.l10n!.where, gameState.players, context),
          for (var text in gameState.selectedVersion.places(context))
            createClickableTableRow(text!, widget.numberOfPlayers, gameState.gameStartTime),
        ],
      ),
    );
  }

  TableRow createClickableTableRow(String text, int playersAmount, DateTime gameStartTime) {
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
        for (int i = 0; i <= playersAmount; i++) ClickableTableCell(cellKey: Key(text + '$i' + gameStartTime.toString()),),
      ],
    );
  }

  TableRow createSectionTableRow(String text, int playersAmount, BuildContext context) {
    final selectedTheme = Provider.of<AppSettings>(context, listen: false).selectedTheme;

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
          color: selectedTheme.colorScheme.secondary,
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
