import 'package:flutter/material.dart';

class ClickableTableCell extends StatelessWidget {
  final ValueNotifier<String> _iconType = ValueNotifier<String>('');

  void resetIcons() {
    _iconType.value = '';
  }

  @override
  Widget build(BuildContext context) {
    IconData? iconData;

    switch (_iconType.value) {
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
        iconData = null;
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
                        _iconType.value = 'check';
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        _iconType.value = 'close';
                        Navigator.of(context).pop();
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.help),
                      onPressed: () {
                        _iconType.value = 'help';
                        Navigator.of(context).pop();
                      },
                    ),
                    TextButton(
                      child: Text('Clear'),
                      onPressed: () {
                        _iconType.value = '';
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
      child: ValueListenableBuilder<String>(
        valueListenable: _iconType,
        builder: (context, value, child) {
          switch (value) {
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
              iconData = null;
          }
          return Container(
            height: 30,
            child: Center(
              child: iconData != null ? Icon(iconData) : Container(),
            ),
          );
        },
      ),
    );
  }
}
