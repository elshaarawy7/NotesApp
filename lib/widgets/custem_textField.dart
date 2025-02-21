import 'package:flutter/material.dart';
import 'package:notes_app/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, 
  required this.hintText,
   this.maxLines = 1 , 
   this.onSaved ,
   this.onChanged ,
   })
    : super(key: key);

  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;
  final Function(String)? onChanged ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextFormField(
        onChanged:onChanged ,
        onSaved: onSaved,
        validator: (value) {
          if(value?.isEmpty??true){
            return 'Field is requierd';
          } 
          else{
            return null ;
          }
        },
        maxLines: maxLines,
        cursorColor: KPrimairyColors,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: KPrimairyColors),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(KPrimairyColors),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
