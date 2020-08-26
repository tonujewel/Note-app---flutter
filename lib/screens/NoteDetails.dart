import 'package:flutter/material.dart';

class NoteDetail extends StatefulWidget {
  @override
  NoteDetailsState createState() => NoteDetailsState();
}

class NoteDetailsState extends State<NoteDetail> {
  static var _priority = ['Hing', 'Low'];
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.title;

    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Note'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: <Widget>[
            // first element
            ListTile(
              title: DropdownButton(
                  items: _priority.map((String dropDownItems) {
                    return DropdownMenuItem<String>(
                      value: dropDownItems,
                      child: Text(dropDownItems),
                    );
                  }).toList(),
                  style: textStyle,
                  value: 'Low',
                  onChanged: (valueSelectedByUser) {
                    setState(() {
                      debugPrint('User selected $valueSelectedByUser');
                    });
                  }),
            ),

            // Second element

            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: TextField(
                controller: titleController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on title');
                },
                decoration: InputDecoration(
                    labelText: 'Title',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),

            // Third element
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 15),
              child: TextField(
                controller: descriptionController,
                style: textStyle,
                onChanged: (value) {
                  debugPrint('Something change on description');
                },
                decoration: InputDecoration(
                    labelText: 'Description',
                    labelStyle: textStyle,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5))),
              ),
            ),

            // fourth element

            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                children: [
                  Expanded(
                      child: RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text('Delete', textScaleFactor: 1.5),
                    onPressed: () {
                      setState(() {
                        debugPrint('Delete button clicked');
                      });
                    },
                  )),

                  Container(width: 5.0,),

                  Expanded(
                      child: RaisedButton(
                    color: Theme.of(context).primaryColorDark,
                    textColor: Theme.of(context).primaryColorLight,
                    child: Text('Save', textScaleFactor: 1.5),
                    onPressed: () {
                      setState(() {
                        debugPrint('Save button clicked');
                      });
                    },
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
