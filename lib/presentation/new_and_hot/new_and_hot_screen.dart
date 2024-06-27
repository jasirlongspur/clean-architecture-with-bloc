import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/constants.dart';
import 'package:sample_project/presentation/fast_laugh/widgets/video_list_tile.dart';
import 'package:sample_project/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:sample_project/presentation/new_and_hot/widgets/video_widget.dart';

class NewAndHotScreen extends StatelessWidget {
  const NewAndHotScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            bottom: const TabBar(tabs: [
              Tab(
                text: "🍿 Coming Soon",
              ),
              Tab(
                text: "👀 Everyone's watching",
              ),
            ]),
          ),
          body: TabBarView(children: [
            _buildComingSoon("coming Soon", context),
            _buildEveryOneIsWatching("everOne is watching", size),
          ])),
    );
  }

  _buildEveryOneIsWatching(String name, size) {
    return ListView.builder(
      itemBuilder: (context, index) => EveruOneWatching(),
    );
  }

  _buildComingSoon(String name, BuildContext ctx) {
    final size = MediaQuery.of(ctx).size;
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ComingSoonWidget(size: size),
      shrinkWrap: true,
    );
  }
}

class EveruOneWatching extends StatelessWidget {
  const EveruOneWatching({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight(10),
          const Text(
            "Coming on friday",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          kHeight(10),
          const Text(
              "Comin fridaiday Coy Comiiday Comng on friday Comi friday Cng on fridy Comining onoming on friday ay Coming on friday Coming on fng on fComing oriday Coming on frinriday  friday g on fridaComing on frmg onComing on friday "),
          kHeight(10),
          VideoWidget(size: size),
          kHeight(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              VideoActionWidget(iconData: Icons.send_outlined, title: "share"),
              kWidth(10),
              VideoActionWidget(iconData: Icons.add, title: "My List"),
              kWidth(10),
              VideoActionWidget(iconData: Icons.play_arrow, title: "Play"),
              kWidth(10)
            ],
          )
        ],
      ),
    );
  }
}
