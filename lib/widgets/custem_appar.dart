import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_search_icon.dart';

class CustemAppar extends StatelessWidget {
  const CustemAppar({super.key , required this.title , required this.icon}); 

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24 , vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
          Text("$title" , style: const TextStyle(
            color: Colors.white ,
            fontSize: 25,
            fontWeight: FontWeight.bold ,
          ),) ,



          CustemSearchIcon(
           icon: icon,
          )
        ],
      ),
    );
  }
}