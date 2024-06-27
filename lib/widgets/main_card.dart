import 'package:flutter/material.dart';

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
