import 'package:flutter/material.dart';
import 'package:notes_app/widgets/nots_views_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotsViewsBody(),
    );
  }
} 

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 28),
      child: Container(
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.amber  ,
          borderRadius: BorderRadius.circular(22),
        ), 
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile( 
              title: const Text("Flutter Bulilder" , style: TextStyle(
                color: Colors.black , 
                fontSize: 20 ,
                fontWeight: FontWeight.bold
              ),), 
               subtitle: Text("Build your carear with Elshaarawy hasan" , 
               style: TextStyle(
                color: Colors.black.withOpacity(.8) , 
                fontSize: 16 ,
                fontWeight: FontWeight.normal ,
               ),), 

               trailing: IconButton(
                onPressed: (){},
                 icon: Icon(Icons.delete , size: 30 , color: Colors.black, )),
            ) , 
            
            SizedBox(height: 70,),
           Align(
            alignment: Alignment.centerRight,
            
             child: Text("May 2022" ,style: TextStyle(
                color: Colors.black , 
                fontSize: 14 , 
             
              ),),
           )
          ],
        ),
      ),
    );
  }
}