import 'package:flutter/material.dart';
import 'package:sample_project/presentation/search/widgets/title.dart';

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

class MainCard extends StatelessWidget {
  const MainCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://m.media-amazon.com/images/M/MV5BNGQ2MTc1MGUtNTIxZS00ZmIwLTkyYWUtMzViM2U5NmEyOWE2XkEyXkFqcGdeQXVyMDA4NzMyOA@@._V1_.jpg")),
      ),
    );
  }
}
