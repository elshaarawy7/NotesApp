import 'package:flutter/material.dart';
import 'package:notes_app/widgets/nots_views_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        }, 
        child: Icon(Icons.add , size: 20,),
      ),

      body: NotsViewsBody(),
    );
  }
} 

