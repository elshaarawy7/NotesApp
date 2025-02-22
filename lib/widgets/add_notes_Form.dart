import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/add_notes_cuibets/cubit/add_notes_cubit.dart';
import 'package:notes_app/model/note_modal.dart';
import 'package:notes_app/widgets/color_List_view.dart';
import 'package:notes_app/widgets/custemBatton.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class AddNoetForm extends StatefulWidget {
  const AddNoetForm({super.key});

  @override
  State<AddNoetForm> createState() => _AddNoetFormState();
}

class _AddNoetFormState extends State<AddNoetForm> {
  final GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? tittle, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onSaved: (value) {
              tittle = value;
            },
            hintText: 'Title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextField(
            onSaved: (value) {
              subtitle = value;
            },
            maxLines: 5,
            hintText: 'content',
          ),
         const SizedBox(
            height: 32,
          ),
       const ColorListView(),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AddNotesCubit, AddNotesState>(
            builder: (context, state) {
              return Custembatton(
                isLoding: state is AddNotesLoading ? true : false,
                onTap: () {
                  print("Button clicked");
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();

                    var CurentDate = DateTime.now();
                    var FormateCurrenetDate =
                        DateFormat.yMd().format(CurentDate);
                    var noteModal = NoteModal(
                      titel: tittle!,
                      subtitle: subtitle!,
                      date: FormateCurrenetDate,
                      color: Colors.blueAccent.value,
                    );
                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModal);
                  } else {
                    print("Validation failed ❌");
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
