import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:sample_project/core/colors/constants.dart';
import 'package:sample_project/presentation/home/widgets/background_card.dart';
import 'package:sample_project/presentation/home/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
      valueListenable: scrollNotifier,
      builder: (context, value, child) =>
          NotificationListener<UserScrollNotification>(
        onNotification: (notification) {
          final ScrollDirection direction = notification.direction;
          if (direction == ScrollDirection.reverse) {
            scrollNotifier.value = false;
          } else if (direction == ScrollDirection.forward) {
            scrollNotifier.value = true;
          }

          return true;
        },
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: const [
                  BackgroundCard(),
                  MainTitleCard(
                    title: 'Realeased past this year',
                  ),
                  MainTitleCard(
                    title: 'Trending',
                  ),
                  MainTitleCard(
                    title: 'Realeased past this year',
                  ),
                  MainTitleCard(
                    title: 'Realeased past this year',
                  ),
                ],
              ),
            ),
            scrollNotifier.value == true
                ? AnimatedContainer(
                    duration: const Duration(milliseconds: 1000),
                    child: Container(
                      color: Colors.black.withOpacity(0.3),
                      width: double.infinity,
                      height: 80,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.network(
                                    scale: 20,
                                    "https://www.stc.com.sa/content/dam/stc/netflix%20logo.png"),
                                const Spacer(),
                                const Icon(Icons.cast),
                                kWidth(10),
                                Container(
                                  height: 30,
                                  width: 30,
                                  color: Colors.blue,
                                ),
                                kWidth(10),
                              ],
                            ),
                            kHeight(5),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Tc Shows",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Movies",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Categories",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                : kHeight(0)
          ],
        ),
      ),
    ));
  }
}
