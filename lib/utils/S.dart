// ignore_for_file: file_names

import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class S {
  static const locale = Locale('ru');

  static const supportedLocales = [Locale('ru')];

  static const localizationDelegates = <LocalizationsDelegate>[
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    AppLocalizations.delegate,
  ];

  static AppLocalizations of(BuildContext context) =>
      AppLocalizations.of(context);
}
