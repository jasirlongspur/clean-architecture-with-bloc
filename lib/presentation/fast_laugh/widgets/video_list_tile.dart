import 'package:flutter/material.dart';

class VideoListTile extends StatelessWidget {
  const VideoListTile({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index],
        ),
        Align(
          child: IconButton(onPressed: () {}, icon: Icons.mute),
        )
      ],
    );
  }
}
