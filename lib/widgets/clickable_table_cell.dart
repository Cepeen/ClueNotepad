import 'package:clue_notepad/utils/build_context_extensions.dart';
import 'package:flutter/material.dart';

class ClickableTableCell extends StatefulWidget {
  final Key cellKey;

  const ClickableTableCell({required this.cellKey}) : super(key: cellKey);

  @override
  _ClickableTableCellState createState() => _ClickableTableCellState();
}

class _ClickableTableCellState extends State<ClickableTableCell> {
  TableCellState _state = TableCellState.clear;

  void _setCellState(TableCellState state) {
    setState(() {
      _state = state;
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
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.check),
                      onPressed: () {
                        _setCellState(TableCellState.confirmed);
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        _setCellState(TableCellState.notMatched);
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () {
                        _setCellState(TableCellState.questionable);
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text(context.l10n!.clear),
                      onPressed: () {
                        _setCellState(TableCellState.clear);
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
          child: _tableCellIcon(_state) ?? Container(),
        ),
      ),
    );
  }

  Icon? _tableCellIcon(TableCellState state) {
    switch (state) {
      case TableCellState.confirmed:
        return Icon(Icons.check);
      case TableCellState.notMatched:
        return Icon(Icons.close);
      case TableCellState.questionable:
        return Icon(Icons.help);
      default:
        return null;
    }
  }
}

enum TableCellState { confirmed, notMatched, questionable, clear }
