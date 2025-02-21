import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_notes_cuibets/cubit/add_notes_cubit.dart';
import 'package:notes_app/notes_cuibts/cubit/notes_cubits_cubit.dart';
import 'package:notes_app/widgets/add_notes_Form.dart';

class AddBatomSheate extends StatefulWidget {
  const AddBatomSheate({super.key});

  @override
  State<AddBatomSheate> createState() => _AddBatomSheateState();
}

class _AddBatomSheateState extends State<AddBatomSheate> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailur) {
            print("field is ${state.errMessage}");
          }

          if (state is AddNotesSuccess) {
            BlocProvider.of<NotesCubitsCubit>(context).FeatchAllNotes();
            Navigator.pop(context);
          }
        },
        builder: (BuildContext context, AddNotesState state) {
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddNoetForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
