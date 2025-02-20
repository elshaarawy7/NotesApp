import 'package:flutter/material.dart';
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
              value = tittle;
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
            height: 50,
          ),
           Custembatton(
            onTap: () {
              if(formkey.currentState!.validate()){
                formkey.currentState!.save();
              } else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
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