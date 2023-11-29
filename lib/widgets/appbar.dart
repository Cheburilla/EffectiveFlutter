import 'package:flutter/material.dart';
import 'package:sber_offline/utils/S.dart';

class CustomAbsorber extends StatelessWidget {
  const CustomAbsorber({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverOverlapAbsorber(
      handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
      sliver: SliverAppBar(
        leading: IconButton(
          icon: Image.asset("cross.png"),
          onPressed: () => (),
        ),
        actions: [
          IconButton(
            icon: Image.asset("exit.png"),
            onPressed: () => (),
          ),
        ],
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        floating: true,
        pinned: true,
        snap: true,
        expandedHeight: 222.0,
        flexibleSpace: FlexibleSpaceBar(
          expandedTitleScale: 1.5,
          collapseMode: CollapseMode.pin,
          stretchModes: const <StretchMode>[
            StretchMode.zoomBackground,
          ],
          centerTitle: true,
          title: Text(
            S.of(context).name,
            style: Theme.of(context).textTheme.displayMedium,
          ),
          background: Padding(
            padding: const EdgeInsets.only(bottom: 36),
            child: Image.asset("photo.png",
                alignment: Alignment.center, width: 110, height: 110),
          ),
        ),
      ),
    );
  }
}

class CustomPersistentHeader extends StatelessWidget {
  const CustomPersistentHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      delegate: _SliverAppBarDelegate(
        TabBar(
          tabs: <Widget>[
            Tab(
              height: 56,
              text: S.of(context).profile,
            ),
            Tab(
              height: 56,
              text: S.of(context).settings,
            ),
          ],
        ),
      ),
      pinned: true,
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
