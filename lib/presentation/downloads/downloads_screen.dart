import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_project/application/downloads/download_bloc.dart';
import 'package:sample_project/core/colors/colors.dart';
import 'package:sample_project/core/colors/constants.dart';
import 'package:sample_project/core/string.dart';
import 'package:sample_project/widgets/app_bar_widget.dart';

class DownloadsScreen extends StatelessWidget {
  DownloadsScreen({super.key});

  final widgetList = [const _smartDownloads(), Section2(), const Section3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: "Downloads",
            )),
        body: ListView.separated(
          itemBuilder: (context, index) => widgetList[index],
          itemCount: widgetList.length,
          separatorBuilder: (context, index) => kHeight(0),
        ));
  }
}

// ignore: camel_case_types
class _smartDownloads extends StatelessWidget {
  const _smartDownloads();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        kWidth(10),
        const Icon(Icons.settings),
        kWidth(10),
        const Text("Smart Downloads")
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({
    super.key,
    required this.image,
    required this.angle,
    required this.margin,
  });

  final String image;
  final double angle;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Transform.rotate(
      angle: angle * pi / 180,
      child: Container(
        margin: margin,
        height: size.width * 0.58,
        width: size.width * 0.4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
      ),
    );
  }
}

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DownloadBloc>(context)
          .add(const DownloadEvent.getDownloadsImage());
    });
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        kHeight(10),
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kHeight(10),
        const Text(
          textAlign: TextAlign.center,
          "We will download a personalized selection of movies and shoes for you, so there is always soothing to watch on your device",
          style: TextStyle(fontSize: 20),
        ),
        BlocBuilder<DownloadBloc, DownloadState>(
          builder: (context, state) {
            return SizedBox(
              height: size.height * 0.5,
              width: size.width * 0.5,
              child: state.isLoading
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: size.height * 0.18,
                          backgroundColor: Colors.grey.shade800,
                        ),
                        DownloadImageWidget(
                          angle: 20,
                          image:
                              "$imageAppendUrl${state.downloads[0].posterPath}",
                          margin: const EdgeInsets.only(left: 130),
                        ),
                        DownloadImageWidget(
                          angle: -20,
                          image:
                              "$imageAppendUrl${state.downloads[1].posterPath}",
                          margin: const EdgeInsets.only(right: 130),
                        ),
                        DownloadImageWidget(
                          angle: 0,
                          image:
                              "$imageAppendUrl${state.downloads[2].posterPath}",
                          margin: const EdgeInsets.only(),
                        ),
                      ],
                    ),
            );
          },
        )
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: kButtonColorBlue,
              onPressed: () {},
              child: const Text("Set up"),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              color: kWhiteColor,
              onPressed: () {},
              child: const Text(
                "Set up",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        )
      ],
    );
  }
}
