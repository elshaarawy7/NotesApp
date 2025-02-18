import 'package:flutter/material.dart';
import 'package:notes_app/views/edite_nots_view.dart';

class CustemNotesItem extends StatelessWidget {
  const CustemNotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditeNotsView();
        }));
      },
      child: Container(
        padding:const EdgeInsets.only(bottom: 24 , top: 24 , left: 16),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color(0xffFFCC80)  ,
          borderRadius: BorderRadius.circular(22),
        ), 
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile( 
              title: const Text("Flutter Tips" , style: TextStyle(
                color: Colors.black , 
                fontSize: 26 ,
              
              ),), 
               subtitle: Text("Build your carear with Elshaarawy hasan" , 
               style: TextStyle(
                color: Colors.black.withOpacity(.8) , 
                fontSize: 20 ,
               
               ),), 
      
               trailing: IconButton(
                onPressed: (){},
                 icon: const Icon(Icons.delete , size: 30 , color: Colors.black, )),
            ) , 
            
          
         const Padding(
            padding:  EdgeInsets.only(right: 24),
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