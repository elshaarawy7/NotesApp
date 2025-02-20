import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:notes_app/notes_cuibts/cubit/notes_cubits_cubit.dart';
import 'package:notes_app/widgets/add_batom_sheate.dart';
import 'package:notes_app/widgets/nots_views_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitsCubit(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                context: context,
                builder: (context) {
                  return AddBatomSheate();
                });
          },
          child: Icon(
            Icons.add,
            size: 20,
          ),
        ),
        body: NotsViewsBody(),
      ),
    );
  }
}
