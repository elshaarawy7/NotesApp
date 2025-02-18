import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_appar.dart';

class EditsNotsViewBody extends StatelessWidget {
  const EditsNotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: 50,),
          CustemAppar(
            title: 'Edit',
            icon: Icons.check_box_sharp ,
           
          ) ,

          
        ],
      ),
    );
  }
}