import 'package:flutter/material.dart';

class Custembatton extends StatelessWidget {
  const Custembatton({
    super.key,
    required this.onTap,
    this.isLoding = false,
  });
  final void Function()? onTap;

  final bool isLoding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
            color: Colors.cyan, borderRadius: BorderRadius.circular(8)),
        child: Center(
            child: isLoding
                ? const SizedBox(
                  height: 24 ,
                  width: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                  
                )
                )
                 
                :const Text(
                    "add",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  )),
      ),
    );
  }
}
