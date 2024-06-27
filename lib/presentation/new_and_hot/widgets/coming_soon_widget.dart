import 'package:flutter/material.dart';
import 'package:sample_project/core/colors/constants.dart';
import 'package:sample_project/presentation/fast_laugh/widgets/video_list_tile.dart';
import 'package:sample_project/presentation/new_and_hot/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: size.height * 0.47,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                "11",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Container(
          height: size.height * 0.47,
          width: size.width - 50,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(size: size),
              Row(
                children: [
                  const Text(
                    "Tall Girl",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  kWidth(10),
                  VideoActionWidget(
                      iconData: Icons.notifications, title: "remind me"),
                  kWidth(10),
                  VideoActionWidget(iconData: Icons.info, title: "info"),
                  kWidth(10),
                ],
              ),
              const Text("Coming on friday"),
              const Text(
                  "Comin fridaiday Coy Comiiday Comng on friday Comi friday Cng on fridy Comining onoming on friday ay Coming on friday Coming on fng on fComing oriday Coming on frinriday  friday g on fridaComing on frmg onComing on friday "),
            ],
          ),
        ),
      ],
    );
  }
}
