import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custem_appar.dart';

class NotsViewsBody extends StatelessWidget {
  const NotsViewsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustemAppar()
      ],
    );
  }
}