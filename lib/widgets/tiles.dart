import 'package:flutter/material.dart';
import 'package:sber_offline/utils/S.dart';
import 'package:sber_offline/widgets/titleblock.dart';

class Tiles extends StatelessWidget {
  const Tiles({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      clipBehavior: Clip.none,
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
          decelerationRate: ScrollDecelerationRate.fast),
      children: [
        Tile(
          image: "assets/flag.png",
          text: S.of(context).primecard,
          titleBlock: TitleBlock(
            height: 2,
            title: S.of(context).primedate,
            footnote: S.of(context).primeprice,
            titleStyle: Theme.of(context).textTheme.labelMedium,
            footnoteStyle: Theme.of(context).textTheme.labelSmall,
          ),
        ),
        Tile(
          image: "assets/percent_filled.png",
          text: S.of(context).transfercard,
          titleBlock: TitleBlock(
            height: 2,
            title: S.of(context).transferdate,
            footnote: S.of(context).transferprice,
            titleStyle: Theme.of(context).textTheme.labelMedium,
            footnoteStyle: Theme.of(context).textTheme.labelSmall,
          ),
        ),
      ],
    );
  }
}

class Tile extends StatelessWidget {
  const Tile(
      {super.key,
      required this.image,
      required this.text,
      required this.titleBlock});
  final String image;
  final String text;
  final TitleBlock titleBlock;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 216,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [
              BoxShadow(
                color: Color(0x114F4F6C),
                blurRadius: 14,
                offset: Offset(0, 8),
                spreadRadius: 0,
              ),
              BoxShadow(
                color: Color(0x14000000),
                blurRadius: 10,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 14, left: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      image,
                      width: 36,
                      height: 36,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Text(
                      text,
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
                const SizedBox(
                  height: 22,
                ),
                titleBlock
              ],
            ),
          ),
        ),
      ),
    );
  }
}
