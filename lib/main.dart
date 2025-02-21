import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/add_notes_cuibets/cubit/add_notes_cubit.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/model/note_modal.dart';
import 'package:notes_app/notes_cuibts/cubit/notes_cubits_cubit.dart' show NotesCubitsCubit;
import 'package:notes_app/simple_bloc_Obseaarver.dart';
import 'package:notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('notesBox');
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModalAdapter());
  await Hive.openBox<NoteModal>(KNotesBocx);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubitsCubit()),
        BlocProvider(create: (context) => AddNotesCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const NotesView(),
      ),
    );
  }
}

