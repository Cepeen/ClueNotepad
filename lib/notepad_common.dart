import 'package:clue_notepad/main.dart';
import 'package:clue_notepad/ui/global/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'widgets/clickable_table_cell.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations? get l10n => AppLocalizations.of(this);
}

class Notepad extends StatelessWidget {
  final List<String> ktoArray;
  final List<String?> czymArray;
  final List<String?> gdzieArray;

  int numberOfPlayers;

  Notepad(
    int playersInitial, {
    required this.ktoArray,
    required this.czymArray,
    required this.gdzieArray,
  }) : numberOfPlayers = playersInitial;

  @override
  Widget build(BuildContext context) {
    return Table(
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
            for (int i = 0; i <= this.numberOfPlayers - 2; i++)
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
                    hintText: context.l10n?.player,
                  ),
                ),
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
              color: Colors.white,
            ),
          ],
        ),
        createSectionTableRow(context.l10n!.who, this.numberOfPlayers, context),
        for (var text in this.ktoArray) createClickableTableRow(text, this.numberOfPlayers),
        createSectionTableRow(context.l10n!.how, this.numberOfPlayers, context),
        for (var text in this.czymArray) createClickableTableRow(text!, this.numberOfPlayers),
        createSectionTableRow(context.l10n!.where, this.numberOfPlayers, context),
        for (var text in this.gdzieArray) createClickableTableRow(text!, this.numberOfPlayers),
      ],
    );
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
          color: getColorPrimary(context),
        ),
        for (int i = 0; i <= playersAmount; i++)
          Container(height: 32, color: getColorSecondary(context)),
      ],
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
}
