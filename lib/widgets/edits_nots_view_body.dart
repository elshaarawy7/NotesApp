import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/model/note_modal.dart';
import 'package:notes_app/notes_cuibts/cubit/notes_cubits_cubit.dart';
import 'package:notes_app/widgets/custem_appar.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class EditsNotsViewBody extends StatefulWidget {
  const EditsNotsViewBody({super.key, required this.note});

  final NoteModal note ;

  @override
  State<EditsNotsViewBody> createState() => _EditsNotsViewBodyState();
}

class _EditsNotsViewBodyState extends State<EditsNotsViewBody> {
  String ? title , content ;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
         const SizedBox(height: 30,),
          CustemAppar(
            onPressed: () {
              widget.note.titel = title ??widget.note.titel ;
              widget.note.subtitle = content ??widget.note.subtitle ;
              widget.note.save();
              BlocProvider.of<NotesCubitsCubit>(context).FeatchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check_box_sharp ,
          ) , 

          const SizedBox(height: 50,), 

           CustomTextField(
            onChanged: (value) {
              title = value ;
            },
            hintText: widget.note.titel, 
           ) , 

           SizedBox(height: 20,) ,
            CustomTextField(
              onChanged: (value) {
                content = value ;
              },
              maxLines: 5,
            hintText: widget.note.subtitle, 
           ) ,
           

          
        ],
      ),
    );
  }
}