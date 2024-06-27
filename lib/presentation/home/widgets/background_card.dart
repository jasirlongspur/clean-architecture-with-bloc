import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sample_project/presentation/home/widgets/custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://m.media-amazon.com/images/M/MV5BNGQ2MTc1MGUtNTIxZS00ZmIwLTkyYWUtMzViM2U5NmEyOWE2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg'))),
          width: double.infinity,
          height: size.height * 0.5,
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(
                  icon: Icons.add,
                  title: 'New List',
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.play_arrow),
                  label: const Text("Play"),
                ),
                const CustomButtonWidget(
                  icon: Icons.info,
                  title: 'info',
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
