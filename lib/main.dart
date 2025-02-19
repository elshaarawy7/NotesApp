import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/views/notes_view.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox(KNotesBocx);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home:const NotesView()
    );
  }
}
