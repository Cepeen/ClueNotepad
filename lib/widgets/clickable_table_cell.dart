import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
