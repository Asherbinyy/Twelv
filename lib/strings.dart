import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:stream_chat_localizations/stream_chat_localizations.dart';

import 'generated/l10n.dart';

final List<LocalizationsDelegate<dynamic>> localizationsDelegates =
    <LocalizationsDelegate<dynamic>>[
  Str.delegate,
  GlobalMaterialLocalizations.delegate,
  GlobalWidgetsLocalizations.delegate,
  GlobalCupertinoLocalizations.delegate,
  ...GlobalStreamChatLocalizations.delegates
];

final List<Locale> supportedLocales = Str.delegate.supportedLocales;
