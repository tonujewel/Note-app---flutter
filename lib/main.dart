import 'package:flutter/material.dart';
import 'package:note_app_flutter/screens/NoteDetails.dart';
import 'package:note_app_flutter/screens/NoteList.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Keeper',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepPurple
      ),
      home: NoteDetail(),
    );
  }
}
