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
       Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
         children: [

           TextButton(child: Text('clear'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = playersInitial
           ;}))),
         ],
       ),
         ]
       )
       ); 
     } 
       break;
      case 1: {
      
           showDialog(context: context, builder: (context) => AlertDialog (
             backgroundColor: Colors.blue[50],
             title: FittedBox(child: Text("How many friends will play?")),
             content: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            
      children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(width: 40.0,height: 40.0,
      child: ElevatedButton(child: Text('2'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 2;})))),
    ),
     Padding(
       padding: const EdgeInsets.all(4.0),
       child: SizedBox(width: 40.0,height: 40.0,
    child: ElevatedButton(child: Text('3'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 3;})))),
     ),
     Padding(
       padding: const EdgeInsets.all(4.0),
       child: SizedBox(width: 40.0,height: 40.0,
        child: ElevatedButton(child: Text('4'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 4;})))),
     ),
     Padding(
       padding: const EdgeInsets.all(4.0),
       child: SizedBox(width: 40.0,height: 40.0,
       child: ElevatedButton(child: Text('5'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 5;})))),
     ),
     Padding(
       padding: const EdgeInsets.all(4.0),
       child: SizedBox(width: 40.0,height: 40.0,
    child: ElevatedButton(child: Text('6'), onPressed: () => Navigator.of(context).pop(setState(() {playersInitial = 6;})))),
     ),

    
      ]
      ))
      );
      
      }
       break;
    case 2: {
    SystemNavigator.pop();
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
            child: Text('set players')
          ),
          PopupMenuItem(
            value: 2,
            child:Text('close app')
          ),
        
          ],
          )
          ],),
          
      body: Notepad('Clue Notepad', playersInitial),
    );
  }
}


 
 
 
 