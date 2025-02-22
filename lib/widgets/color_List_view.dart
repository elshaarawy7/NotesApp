import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10 ,
        itemBuilder: (context, index) {
          return const Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: const ColorItem(),
          );
        },
      ),
    );
  }
}