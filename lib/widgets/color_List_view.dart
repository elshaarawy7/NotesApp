import 'package:flutter/material.dart';
import 'package:notes_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int curentIndex = 0 ;
  List<Color> colors =  [
    const Color(0xFF1E3A8A), // Indigo
  const Color(0xFF2563EB), // Blue
  const Color(0xFF10B981), // Emerald
  const Color(0xFFF59E0B), // Amber
  const Color(0xFFEF4444), // Red
  const Color(0xFF8B5CF6), // Violet
  const Color(0xFFEC4899), // Pink
  const Color(0xFF0F172A), // Dark Slate
  const Color(0xFF64748B), // Slate Gray
  const Color(0xFFF1F5F9), // Light Gray
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2 ,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length ,
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child:  GestureDetector(
              onTap: () {
                curentIndex = index ;
                setState(() {
                  
                });
              },
              child: ColorItem(
                color: colors[index],
                isActive: curentIndex == index ,
              ),
            ),
          );
        },
      ),
    );
  }
}