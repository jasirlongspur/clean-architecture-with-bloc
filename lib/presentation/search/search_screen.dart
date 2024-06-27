import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/colors.dart';
import 'package:sample_project/core/colors/constants.dart';
import 'package:sample_project/presentation/search/widgets/search_idle.dart';
import 'package:sample_project/presentation/search/widgets/search_result.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CupertinoSearchTextField(
              style: TextStyle(color: kWhiteColor),
            ),
            kHeight(10),
            Expanded(
              // child: SearchIdle(),
              child: SearchResult(),
            )
          ],
        ),
      ),
    ));
  }
}
