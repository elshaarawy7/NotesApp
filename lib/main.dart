import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/add_notes_cuibets/cubit/add_notes_cubit.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/model/note_modal.dart';
import 'package:notes_app/views/notes_view.dart';

void main()async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModalAdapter());
  await Hive.openBox(KNotesBocx);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        )
      ],
      child: Container(),
    );
  }
}
