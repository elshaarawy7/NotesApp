import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add_notes_cuibets/cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/add_notes_Form.dart';
import 'package:notes_app/widgets/custemBatton.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class AddBatomSheate extends StatefulWidget {
 const  AddBatomSheate({super.key});

  @override
  State<AddBatomSheate> createState() => _AddBatomSheateState();
}

class _AddBatomSheateState extends State<AddBatomSheate> {
 

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit,AddNotesState >(
          listener: ( context,  state) {
            if(state is AddNotesFailur){
             print("field is ${state.errMessage}");
            } 

            if(state is AddNotesSuccess){
              Navigator.pop(context);
            }
            },
        
          builder: (BuildContext context, AddNotesState state) {
            return ModalProgressHUD(
              inAsyncCall:state is AddNotesLoading ? true : false ,
              child: const AddNoetForm() ,
              );
            },
          ),
      ),
    );
  }
}


