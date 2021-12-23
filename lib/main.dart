import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'tables.dart';

void main()  => runApp(const ClueNotepad());

var jeden = ClickableTableCell ();

class ClueNotepad extends StatefulWidget {
  
  const ClueNotepad({Key key}) : super(key: key);

  static const String _title = 'Clue Notepad';

  @override
  _ClueNotepadState createState() => _ClueNotepadState();
}

class _ClueNotepadState extends State<ClueNotepad> {

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: ClueNotepad._title,
      home: AppContent(),
    );
  }
}

class AppContent extends StatefulWidget {
 
  @override
  _AppContentState createState() => _AppContentState();
}

class _AppContentState extends State<AppContent> {
var playersInitial = 2;

Future<void> onSelected(BuildContext context, int item) async {

   switch (item) {
     case 0: {

    showDialog(context: context, builder: (context) => AlertDialog (
       actions: <Widget>[
       TextButton(child: Text('clear'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = playersInitial
       ;}))),
         ]
       )
       ); 
     } 
       break;
      case 1: {
      
    SystemNavigator.pop();
      
      }
       break;
    case 2: {

           showDialog(context: context, builder: (context) => AlertDialog (
      actions: <Widget>[
      TextButton(child: Text('2'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 2;}))),
      TextButton(child: Text('3'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 3;}))),
      TextButton(child: Text('4'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 4;}))),
      TextButton(child: Text('5'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 5;}))),
      TextButton(child: Text('6'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 6;}))),
      ]
      )
      );
      }
       break;
     default:
   }
 } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(ClueNotepad._title), 
      actions: [PopupMenuButton<int>(onSelected: (item) => onSelected(context, item),  itemBuilder: (context)  => [

           PopupMenuItem( 
          value: 0,
          child: Text('clear tables')
          ),
          PopupMenuItem(
            value: 1,
            child: Text('close app')
          ),
          PopupMenuItem(
            value: 2,
            child:Text('set players')
          ),
        
          ],
          )
          ],),
          
      body: Notepad('Clue Notepad', playersInitial),
    );
  }
}


 
 
 
 