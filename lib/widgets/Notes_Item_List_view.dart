import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/model/note_modal.dart';
import 'package:notes_app/notes_cuibts/cubit/notes_cubits_cubit.dart';
import 'package:notes_app/widgets/nots_item.dart';

class NotesItemListView extends StatelessWidget {
  const NotesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubitsCubit , NotesCubitsState >(   
    builder: (context, state){
      List<NoteModal> notes = BlocProvider.of<NotesCubitsCubit>(context).notes??[];
      itemCount:notes.length ;
       return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding:  EdgeInsets.symmetric(vertical: 4),
              child: CustemNotesItem(),
            );
          }
        ),
      );
    }
    );
    }
        }
     