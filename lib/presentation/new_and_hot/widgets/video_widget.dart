import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: size.height * 0.25,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://media.themoviedb.org/t/p/w1066_and_h600_bestv2/1XyIHrP7X7rn3UBkNy9hPb9vCUf.jpg"))),
        ),
        const Positioned(
            bottom: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.volume_off_outlined),
            ))
      ],
    );
  }
}
