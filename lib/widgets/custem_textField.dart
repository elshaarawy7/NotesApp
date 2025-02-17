import 'package:flutter/material.dart';
import 'package:notes_app/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText, this.maxLines = 1}) : super(key: key);

  final String hintText;
  final int maxLines ;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        maxLines:maxLines ,
        cursorColor: KPrimairyColors,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: KPrimairyColors),
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

  

