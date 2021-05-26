import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'tables.dart';

void main() => runApp(const ClueNotepad());

class ClueNotepad extends StatelessWidget {
  
  const ClueNotepad({Key key}) : super(key: key);

  static const String _title = 'Clue Notepad';

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title), 
        actions: [PopupMenuButton<int>(onSelected: (item) => onSelected(context, item),  itemBuilder: (context) => [
          PopupMenuItem( 
            value: 0,
            child: Text('clear tables')
            ),
            PopupMenuItem(
              value: 1,
              child: Text('close app')
            )
            ],
            )
            ],),
            
        body: Notepad('Clue Notepad'),
      ),
    );
  }
}


 void onSelected(BuildContext context, int item) {

   switch (item) {
     case 0: {

     }
       break;
      case 1: {
      
    SystemNavigator.pop();
      
      }
       break;

     default:
   }
 } 
 
 
 
