import 'package:flutter/material.dart';
import 'package:sber_offline/utils/S.dart';
import 'package:sber_offline/widgets/titleblock.dart';

class Slims extends StatelessWidget {
  const Slims({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Slim(
          image: "speedometer.png",
          titleBlock: TitleBlock(
            title: S.of(context).limit,
            footnote: S.of(context).sublimit,
            titleStyle: Theme.of(context).textTheme.bodyMedium,
            height: 2,
          ),
        ),
        Slim(
          image: "percent.png",
          titleBlock: TitleBlock(
            title: S.of(context).fees,
            footnote: S.of(context).subfees,
            titleStyle: Theme.of(context).textTheme.bodyMedium,
            height: 2,
          ),
        ),
        Slim(
          image: "arrows.png",
          titleBlock: TitleBlock(
            title: S.of(context).tariffs_info,
            titleStyle: Theme.of(context).textTheme.bodyMedium,
            height: 2,
          ),
        ),
      ],
    );
  }
}

class Slim extends StatelessWidget {
  const Slim({
    super.key,
    required this.titleBlock,
    required this.image,
  });
  final String image;
  final TitleBlock titleBlock;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Image.asset(
            image,
            width: 36,
            height: 36,
          ),
          const SizedBox(
            width: 12,
          ),
          SizedBox(
            width: 263,
            child: titleBlock,
          ),
          const Spacer(),
          const Icon(
            Icons.keyboard_arrow_right_rounded,
            size: 24,
            color: Color.fromRGBO(
              0,
              0,
              0,
              0.32,
            ),
          ),
        ],
      ),
    );
  }
}
