import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/colors.dart';
import 'package:sample_project/presentation/downloads/downloads_screen.dart';
import 'package:sample_project/presentation/fast_laugh/fast_laugh_screen.dart';
import 'package:sample_project/presentation/home/home_screen.dart';
import 'package:sample_project/presentation/main_page/widgets/bottom_nav.dart';
import 'package:sample_project/presentation/new_and_hot/new_and_hot_screen.dart';
import 'package:sample_project/presentation/search/search_screen.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});

  final _pages = [
    HomeScreen(),
    NewAndHotScreen(),
    FastLaughScreen(),
    SearchScreen(),
    DownloadsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundColor,
          body: ValueListenableBuilder(
            valueListenable: indexChangeNotifier,
            builder: (context, value, child) {
              return _pages[value];
            },
          ),
          bottomNavigationBar: const BottomNavigationWidget()),
    );
  }
}
