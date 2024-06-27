import 'package:flutter/material.dart';
import 'package:sample_project/presentation/search/widgets/title.dart';
import 'package:sample_project/widgets/main_card.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTile(title: "Movies & Tv"),
        Expanded(
            child: GridView.count(
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 1 / 1.5,
          shrinkWrap: true,
          crossAxisCount: 3,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}
