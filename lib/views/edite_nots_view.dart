import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edits_nots_view_body.dart';

class EditeNotsView extends StatelessWidget {
  const EditeNotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:EditsNotsViewBody() ,
    );
  }
}