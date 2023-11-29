import 'package:flutter/material.dart';
import 'package:sber_offline/utils/S.dart';
import 'package:sber_offline/widgets/chipwrap.dart';
import 'package:sber_offline/widgets/slims.dart';
import 'package:sber_offline/widgets/tiles.dart';
import 'package:sber_offline/widgets/titleblock.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Builder(
        builder: (BuildContext context) {
          return CustomScrollView(
            slivers: <Widget>[
              SliverOverlapInjector(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(
                        height: 30,
                      ),
                      TitleBlock(
                        title: S.of(context).connected,
                        footnote: S.of(context).subconnected,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 130,
                        child: Tiles(),
                      ),
                      const SizedBox(
                        height: 46,
                      ),
                      TitleBlock(
                          title: S.of(context).tariffs,
                          footnote: S.of(context).subtariffs),
                      const SizedBox(
                        height: 12,
                      ),
                      const Slims(),
                      const SizedBox(
                        height: 46,
                      ),
                      TitleBlock(
                          title: S.of(context).interests,
                          footnote: S.of(context).subinterests),
                      const SizedBox(
                        height: 30,
                      ),
                      const InputChipExample(),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
