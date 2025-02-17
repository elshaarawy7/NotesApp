import 'package:flutter/material.dart';
import 'package:notes_app/widgets/nots_item.dart';

class NotesItemListView extends StatelessWidget {
  const NotesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemBuilder: (context, index) {
         
          return const Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: CustemNotesItem(),
          );
        },
      ),
    );
  }
}