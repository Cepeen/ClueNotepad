import 'package:flutter/material.dart';




class Notepad extends StatefulWidget {
  Notepad(this.title);
  final String title;


  

  @override
  _NotepadState createState() => _NotepadState();
}


class _NotepadState extends State<Notepad> {
  var ktoArray = ['Green', 'Mustard', 'Orchid', 'Peacock', 'Plum', 'Scarlett'];
  var czymArray = ['Świecznik', 'Sztylet', 'Metalowa Rura', 'Rewolwer', 'Lina', 'Klucz francuski'];
  var gdzieArray = ['Salon', 'Sala bilardowa', 'Ogród zimowy', 'Jadalnia', 'Hol', 'Kuchnia', 'Biblioteka', 'Weranda', 'Gabinet'];
  
  @override


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
              Container(alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text('Przeciwnik',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
          height: 32, ),
              Container(height: 32, color: Colors.white,),
            ],
          ),

          createSectionTableRow('Kto'),
          for(var text in ktoArray)
          createClickableTableRow(text),
         
         createSectionTableRow('Czym'),
          for(var text in czymArray)
          createClickableTableRow(text),
          
          createSectionTableRow('Gdzie'),
          for(var text in gdzieArray)
          createClickableTableRow(text),
        ]
      ),
    );
  }
}

TableRow createClickableTableRow(String text) {
  return TableRow(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            children: <Widget>[
              Container(alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold)),
          height: 32, color: Colors.white,),
          for(int i = 0; i <= 2; i++)
              ClickableTableCell(),
              
            ],
          );
}

TableRow createSectionTableRow(String text) {
  return TableRow(
            decoration: const BoxDecoration(color: Colors.white,),
            children: <Widget>[
              Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(2.0),
          child: Text(text,
          style: TextStyle(fontWeight: FontWeight.bold)),
          height: 32, color: Colors.lightBlue,),

              Container(height: 32, color: Colors.blue,),
              Container(height: 32, color: Colors.blue,),
              Container(height: 32, color: Colors.blue,),

       ],
          );
}

class ClickableTableCell extends StatefulWidget {


  @override
  _ClickableTableCellState createState() => _ClickableTableCellState(0);
}

class _ClickableTableCellState extends State<ClickableTableCell> {
  

int index = 0;
_ClickableTableCellState(this.index);


  @override
  Widget build(BuildContext context) {
    return TableRowInkWell(
      onDoubleTap: () {
        setState(() {
          if(index < 2) {
            ++index;
          } else {
            index = 0;
          }
        }
        );
      },

      
          child: Container(
            height: 32,
            child: Center(
        child: index == 0 ? Container() : index == 1 ? Icon(Icons.close) : Icon(Icons.check),
      ),
          ),
    );
  }
}
