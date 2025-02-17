import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_search_icon.dart';

class CustemAppar extends StatelessWidget {
  const CustemAppar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 50),
      child: Row(
        children: const [
          Text("Notes" , style: TextStyle(
            color: Colors.white ,
            fontSize: 25,
            fontWeight: FontWeight.bold ,
          ),) ,

          SizedBox(
            width:220,
            ),

          CustemSearchIcon()
        ],
      ),
    );
  }
}