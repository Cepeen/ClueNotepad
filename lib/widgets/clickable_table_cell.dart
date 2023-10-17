import 'package:clue_notepad/tables.dart';
import 'package:flutter/material.dart';

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
  int _index = 0;

  void _setIndex(int newIndex) {
    setState(() {
      _index = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
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
                        _setIndex(1);
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        _setIndex(2);
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () {
                        _setIndex(3);
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text(context.l10n!.clear),
                      onPressed: () {
                        _setIndex(0);
                        Navigator.of(context).pop();
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
          child: _index == 0
              ? Container()
              : _index == 1
                  ? Icon(Icons.check)
                  : _index == 2
                      ? Icon(Icons.close)
                      : _index == 3
                          ? Icon(Icons.help)
                          : Container(),
        ),
      ),
    );
  }
}
