import 'package:flutter/material.dart';
import 'package:sample_project/presentation/fast_laugh/widgets/video_list_tile.dart';

class FastLaughScreen extends StatelessWidget {
  const FastLaughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              10,
              (index) => VideoListTile(index: index),
            )));
  }
}
