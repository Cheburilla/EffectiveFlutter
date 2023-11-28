import 'package:flutter/material.dart';
import 'package:sber_offline/themes/themes.dart';
import 'package:sber_offline/utils/S.dart';
import 'package:sber_offline/widgets/appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: S.supportedLocales,
      locale: S.locale,
      localizationsDelegates: S.localizationDelegates,
      title: 'Sberbank Offline',
      theme: lightTheme,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const int tabsCount = 2;
    return DefaultTabController(
      initialIndex: 0,
      length: tabsCount,
      child: Scaffold(
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const CustomAbsorber(),
              const CustomPersistentHeader()
            ];
          },
          body: TabBarView(
            children: <Widget>[
              SafeArea(child: Builder(builder: (BuildContext context) {
                return CustomScrollView(slivers: <Widget>[
                  SliverOverlapInjector(
                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                        context),
                  ),
                  SliverFillRemaining(
                      child: Column(children: <Widget>[
                    Text("1.1 text",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text("1.2 text",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text("1.3 text",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text("1.4 text",
                        style: Theme.of(context).textTheme.bodyMedium),
                    Text("1.5 text",
                        style: Theme.of(context).textTheme.bodyMedium),
                  ]))
                ]);
              })),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
