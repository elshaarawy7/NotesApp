import 'package:flutter/material.dart';

class CustemSearchIcon extends StatelessWidget {
  const CustemSearchIcon({super.key , required this.icon});

  final IconData icon ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.2),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Center(
          child: Icon(
        icon,
        size: 28,
        color: Colors.white,
      ),
      ),
    );
  }
}
