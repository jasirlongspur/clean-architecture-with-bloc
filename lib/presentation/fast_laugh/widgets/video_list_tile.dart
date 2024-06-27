import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/constants.dart';

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
          alignment: Alignment.bottomCenter,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.volume_off_outlined)),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(),
                  kHeight(10),
                  VideoActionWidget(
                      iconData: Icons.emoji_emotions, title: "LOL"),
                  kHeight(10),
                  VideoActionWidget(iconData: Icons.add, title: "My List"),
                  kHeight(10),
                  VideoActionWidget(iconData: Icons.share, title: "Share"),
                  kHeight(10),
                  VideoActionWidget(iconData: Icons.play_arrow, title: "Play"),
                  kHeight(10),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}

class VideoActionWidget extends StatelessWidget {
  VideoActionWidget({super.key, required this.iconData, required this.title});
  IconData iconData;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(iconData), Text(title)],
    );
  }
}
