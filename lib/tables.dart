import 'package:flutter/material.dart';


class Notepad extends StatefulWidget {
  Notepad(this.title, this.numberOfPlayers);
  final String title;
  final int numberOfPlayers;

  @override
  _NotepadState createState() => _NotepadState();
}

class _NotepadState extends State<Notepad> {
  var ktoArray = ['Green', 'Mustard', 'Orchid', 'Peacock', 'Plum', 'Scarlett'];
  var czymArray = ['Świecznik', 'Sztylet', 'Metalowa Rura', 'Rewolwer', 'Lina', 'Klucz francuski'];
  var gdzieArray = ['Salon', 'Sala bilardowa', 'Ogród zimowy', 'Jadalnia', 'Hol', 'Kuchnia', 'Biblioteka', 'Weranda', 'Gabinet'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Table(
        border: TableBorder.all(width: 2, color: Colors.blue),
        columnWidths: {
          0: FixedColumnWidth(120),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: <TableRow>[
          
          TableRow(
            decoration: const BoxDecoration(color: Colors.white,),
            children: <Widget>[
              
              Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text('Posiadłość',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
          height: 32, color: Colors. blue),

              Container(alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text('Ty',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          height: 32, ),


          for(int i = 0; i <= widget.numberOfPlayers -2; i++)
              Container(alignment: Alignment.center,
        padding: EdgeInsets.all(2.0),
        child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration( 
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        contentPadding:
        EdgeInsets.only(left: 3, bottom: 10, top: 0, right: 3),
        hintText: "Gracz")),
          height: 32, ),

              Container(height: 32, color: Colors.white,),
            ],
          ),

          createSectionTableRow('Kto', widget.numberOfPlayers),
          for(var text in ktoArray)
          createClickableTableRow(text, widget.numberOfPlayers),
         
          createSectionTableRow('Czym', widget.numberOfPlayers),
          for(var text in czymArray)
          createClickableTableRow(text, widget.numberOfPlayers),
          
          createSectionTableRow('Gdzie', widget.numberOfPlayers),
          for(var text in gdzieArray)
          createClickableTableRow(text, widget.numberOfPlayers),

        ]
      ),
    );
  }
}

TableRow createClickableTableRow(String text, int playersAmount) {
  return TableRow(
    
          decoration: const BoxDecoration(
          color: Colors.white,
          ),
          children: <Widget>[
              GestureDetector(onDoubleTap: (){},
                              child: Container(alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold)),
          height: 32, color: Colors.white,),
              ),
          for(int i = 0; i <= playersAmount; i++)
              ClickableTableCell(),
            ],
          );
}

TableRow createSectionTableRow(String text, int playersAmount) {
  return TableRow(
          decoration: const BoxDecoration(color: Colors.white,),
          children: <Widget>[
              Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold)),
          height: 32, color: Colors.lightBlue,),

for(int i = 0; i <= playersAmount; i++)
              Container(height: 32, color: Colors.blue,),

          
       ],
     );
}



class ClickableTableCell extends StatefulWidget {

ClickableTableCell();
  final key = GlobalKey();
  @override
  _ClickableTableCellState createState() => _ClickableTableCellState();
}

class _ClickableTableCellState extends State<ClickableTableCell> {

int index = 0
;

Widget build(BuildContext context) {
    return TableRowInkWell(
      
      onTap: () {
         showDialog(
    context: context,
    builder: (BuildContext context,) {
      
      return   AlertDialog( 
      actions: <Widget>[
      IconButton (icon: Icon(Icons.check), onPressed: () => Navigator.of(context).pop(setState(() {index = 1;}))),
      IconButton(icon: Icon(Icons.close), onPressed: () => Navigator.of(context).pop(setState(() {index = 2;}))),
      IconButton(icon: Icon(Icons.help), onPressed: () => Navigator.of(context).pop(setState(() {index = 3;}))),
      TextButton(child: Text('clear'), onPressed: () => Navigator.of(context).pop(setState(() {index = 0;})))
      
      ]);
    }
    );
    },      child: Container(
            height: 32,
            child: Center(
        child: 
        
        index == 0 ? Container():
        index == 1 ? Icon(Icons.check) : 
        index == 2 ? Icon(Icons.close) : 
        index == 3 ? Icon(Icons.help) : Container() 
       ),
      ),
    );
  }
}


 