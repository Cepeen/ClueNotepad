import 'package:clue_notepad/tables.dart';
import 'package:flutter/material.dart';


class ClickableTableCell extends StatefulWidget {
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
                        onPressed: () => (setState(() {
                              index = 1;
                              Navigator.of(context).pop();
                            }))),
                    IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () => (setState(() {
                              index = 2;
                              Navigator.of(context).pop();
                            }))),
                    IconButton(
                        icon: Icon(Icons.help),
                        onPressed: () => (setState(() {
                              index = 3;
                              Navigator.of(context).pop();
                            }))),
                    TextButton(
                        child: Text(context.l10n!.clear),
                        onPressed: () => (setState(() {
                              index = 0;
                              Navigator.of(context).pop();
                            })))
                  ],
                ),
              ]);
            });
      },
      child: Container(
        height: 30,
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
