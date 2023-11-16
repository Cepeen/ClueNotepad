import 'package:flutter/material.dart';

class ClickableTableCell extends StatefulWidget {
  @override
  _ClickableTableCellState createState() => _ClickableTableCellState();
}

class _ClickableTableCellState extends State<ClickableTableCell> {
  String _iconType = '';

  @override
  Widget build(BuildContext context) {
    IconData? iconData;

    // Switch case to determine the appropriate icon based on _iconType
    switch (_iconType) {
      case 'check':
        iconData = Icons.check;
        break;
      case 'close':
        iconData = Icons.close;
        break;
      case 'help':
        iconData = Icons.help;
        break;
      default:
        iconData = null; // Set a default value or leave it null if no icon should be shown
    }
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
                          _iconType = 'check';
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          _iconType = 'close';
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () {
                        setState(() {
                          _iconType = 'help';
                        });
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text('Clear'),
                      onPressed: () {
                        setState(() {
                          _iconType = '';
                        });
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
          child: iconData != null ? Icon(iconData) : Container(),
        ),
      ),
    );
  }
}
