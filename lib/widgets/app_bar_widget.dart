import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/constants.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth(10),
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        ),
        const Spacer(),
        const Icon(Icons.cast),
        kWidth(10),
        Container(
          height: 30,
          width: 30,
          color: Colors.blue,
        ),
        kWidth(10),
      ],
    );
  }
}
