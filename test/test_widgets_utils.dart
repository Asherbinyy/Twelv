import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/strings.dart';

Widget testApp<E, S, B extends Bloc<E, S>>(WidgetBuilder builder,
    {TargetPlatform? platform, B? bloc}) {
  final Widget app = MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appTheme.copyWith(platform: platform ?? TargetPlatform.android),
    localizationsDelegates: localizationsDelegates,
    supportedLocales: supportedLocales,
    builder: (BuildContext context, Widget? child) => builder(context),
  );

  return bloc == null
      ? app
      : BlocProvider<B>.value(
          value: bloc,
          child: app,
        );
}
