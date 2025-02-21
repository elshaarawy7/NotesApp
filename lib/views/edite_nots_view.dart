import 'package:flutter/material.dart';
import 'package:notes_app/model/note_modal.dart';
import 'package:notes_app/widgets/edits_nots_view_body.dart';

class EditeNotsView extends StatelessWidget {
  const EditeNotsView({super.key ,  required this.note });

      final NoteModal note ;
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      body:EditsNotsViewBody(
        note: note,
      ) ,
    ); 
  }
}