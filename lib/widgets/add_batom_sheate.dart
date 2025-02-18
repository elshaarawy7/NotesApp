import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custemBatton.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class AddBatomSheate extends StatelessWidget {
  const AddBatomSheate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child:  SingleChildScrollView(
        child:  Column(
          children: [
        
            SizedBox(height: 50,),
        
            CustomTextField(
              hintText: 'Title',
              ), 
           SizedBox(height: 10,),
              CustomTextField(
                maxLines: 5,
              hintText: 'content',
              ),  
        
             SizedBox(height: 50,),
        
              Custembatton(),
        
              SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}