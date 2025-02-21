import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/notes_cuibts/cubit/notes_cubits_cubit.dart';
import 'package:notes_app/widgets/Notes_Item_List_view.dart';
import 'package:notes_app/widgets/custem_appar.dart';

import 'nots_item.dart';

class NotsViewsBody extends StatefulWidget {
  const NotsViewsBody({super.key});

  @override
  State<NotsViewsBody> createState() => _NotsViewsBodyState();
}


class _NotsViewsBodyState extends State<NotsViewsBody> {

  void initState() {
    BlocProvider.of<NotesCubitsCubit>(context).FeatchAllNotes();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustemAppar(
          title: 'Notes',
          icon: Icons.search,
        ),

        Expanded(child: NotesItemListView())
        
      ],
    );
  }
}