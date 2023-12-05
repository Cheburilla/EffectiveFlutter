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
          image: "assets/speedometer.png",
          titleBlock: TitleBlock(
            title: S.of(context).limit,
            footnote: S.of(context).sublimit,
            titleStyle: Theme.of(context).textTheme.bodyMedium,
            height: 2,
          ),
        ),
        const SlimDivider(),
        Slim(
          image: "assets/percent.png",
          titleBlock: TitleBlock(
            title: S.of(context).fees,
            footnote: S.of(context).subfees,
            titleStyle: Theme.of(context).textTheme.bodyMedium,
            height: 2,
          ),
        ),
        const SlimDivider(),
        Slim(
          image: "assets/arrows.png",
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
    final mediaQuery = MediaQuery.sizeOf(context).width;
    return InkWell(
      onTap: () => (),
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Image.asset(
                    image,
                    width: 36,
                    height: 36,
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: mediaQuery - (64 + 48)),
                  child: titleBlock,
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 24,
                    color: Theme.of(context).unselectedWidgetColor,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SlimDivider extends StatelessWidget {
  const SlimDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      indent: 48,
      color: Theme.of(context).dividerColor,
    );
  }
}
