import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_appar.dart';
import 'package:notes_app/widgets/custem_textField.dart';

class EditsNotsViewBody extends StatelessWidget {
  const EditsNotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustemAppar(
            title: 'Edit Note',
            icon: Icons.check_box_sharp ,
          ) , 

           SizedBox(height: 50,), 

           CustomTextField(
            hintText: 'Title :', 
           ) , 

           SizedBox(height: 20,) ,
            CustomTextField(
              maxLines: 5,
            hintText: 'content :', 
           ) ,
           

          
        ],
      ),
    );
  }
}