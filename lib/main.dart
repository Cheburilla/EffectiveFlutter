import 'package:flutter/material.dart';
import 'package:sber_offline/themes/themes.dart';
import 'package:sber_offline/utils/S.dart';
import 'package:sber_offline/widgets/appbar.dart';
import 'package:sber_offline/widgets/profileview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            parent: AlwaysScrollableScrollPhysics(),
          ),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              const CustomAbsorber(),
              const CustomPersistentHeader()
            ];
          },
          body: TabBarView(
            children: <Widget>[
              const ProfileView(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
