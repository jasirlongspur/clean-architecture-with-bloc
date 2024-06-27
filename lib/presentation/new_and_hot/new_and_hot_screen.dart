import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/constants.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "New & Hot",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
            ),
            actions: [
              const Icon(Icons.cast),
              kWidth(10),
              Container(
                height: 30,
                width: 30,
                color: Colors.blue,
              ),
              kWidth(10),
            ],
            bottom: TabBar(tabs: [
              Tab(
                text: "🍿 Coming Soon",
              ),
              Tab(
                text: "👀 Everyone's watching",
              ),
            ]),
          ),
          body: TabBarView(children: [
            _buildComingSoon("coming Soon"),
            _buildEveryOneIsWatching("everOne is watching "),
          ])),
    );
  }

  _buildEveryOneIsWatching(String name) {
    return Center(
      child: Text(name),
    );
  }

  _buildComingSoon(String name) {
    return Center(
      child: Text(name),
    );
  }
}
