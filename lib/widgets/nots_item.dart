import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/const.dart';
import 'package:notes_app/model/note_modal.dart';
import 'package:notes_app/views/edite_nots_view.dart';

class CustemNotesItem extends StatelessWidget {
  const CustemNotesItem({super.key, required this.note});

  final NoteModal note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const EditeNotsView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 24, top: 24, left: 16),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(22),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.titel,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 26,
                ),
              ),
              subtitle: Text(
                note.subtitle,
                style: TextStyle(
                  color: Colors.black.withOpacity(.8),
                  fontSize: 20,
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                note.delete();
                  },
                  icon: const Icon(
                    Icons.delete,
                    size: 30,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
