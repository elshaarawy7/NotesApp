import 'package:flutter/material.dart';
import 'package:notes_app/widgets/Notes_Item_List_view.dart';
import 'package:notes_app/widgets/custem_appar.dart';

import 'nots_item.dart';

class NotsViewsBody extends StatelessWidget {
  const NotsViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustemAppar(),

        SizedBox(height:3,),

        Expanded(child: NotesItemListView())
        
      ],
    );
  }
}