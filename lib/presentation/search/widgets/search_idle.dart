import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/constants.dart';
import 'package:sample_project/presentation/search/widgets/title.dart';

class SearchIdle extends StatelessWidget {
  const SearchIdle({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTile(
          title: 'Top Search',
        ),
        kHeight(10),
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  TopSearchItemTile(screenWidth: screenWidth),
              separatorBuilder: (context, index) => kHeight(10),
              itemCount: 10),
        )
      ],
    );
  }
}

class TopSearchItemTile extends StatelessWidget {
  const TopSearchItemTile({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 70,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://m.media-amazon.com/images/M/MV5BMTUyNzgxNjg2M15BMl5BanBnXkFtZTgwMTY1NDI1NjE@._V1_.jpg"))),
        ),
        kWidth(10),
        const Expanded(
          child: Text(
            "Movie name",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const Icon(Icons.play_circle_fill)
      ],
    );
  }
}
