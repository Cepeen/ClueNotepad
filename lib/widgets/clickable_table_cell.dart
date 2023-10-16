import 'package:clue_notepad/tables.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TableRowProvider extends ChangeNotifier {
  int _index = 0;

  int get index => _index;

  void setIndex(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }
}

class ClickableTableCell extends StatefulWidget {
  @override
  _ClickableTableCellState createState() => _ClickableTableCellState();
}

class _ClickableTableCellState extends State<ClickableTableCell> {
  void _resetIndex(int newIndex) {
    Provider.of<TableRowProvider>(context, listen: false).setIndex(newIndex);
  }

  Widget build(BuildContext context) {
    int index = Provider.of<TableRowProvider>(context).index;

    return TableRowInkWell(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              backgroundColor: Colors.blue[50],
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                    ),
                    TextButton(
                      child: Text(context.l10n!.clear),
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                    )
                  ],
                ),
              ],
            );
          },
        );
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
                          : Container(),
        ),
      ),
    );
  }
}

