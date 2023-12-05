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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: TitleBlock(
                          title: S.of(context).connected,
                          footnote: S.of(context).subconnected,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 46),
                        child: SizedBox(
                          height: 130,
                          child: Tiles(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: TitleBlock(
                            title: S.of(context).tariffs,
                            footnote: S.of(context).subtariffs),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Slims(),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TitleBlock(
                            title: S.of(context).interests,
                            footnote: S.of(context).subinterests),
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
