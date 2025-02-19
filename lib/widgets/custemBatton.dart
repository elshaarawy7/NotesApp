import 'package:flutter/material.dart';

class Custembatton extends StatelessWidget {
  const Custembatton({super.key , required this.onTap}); 
 final void Function()? onTap ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width ,
        height: 55,
        decoration: BoxDecoration(
        color: Colors.cyan,
          borderRadius: BorderRadius.circular(8)
        ), 
        child: Center(child: Text("add" , style: TextStyle(
          color: Colors.black, 
          fontSize: 20 ,
          fontWeight: FontWeight.bold
        ),)
        ),
      ),
    );
  }
}