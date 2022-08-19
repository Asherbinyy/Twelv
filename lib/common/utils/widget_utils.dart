import 'package:flutter/material.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

Widget padded(
  Widget? child, {
  double left = 0,
  double top = 0,
  double right = 0,
  double bottom = 0,
}) =>
    Padding(
      padding: EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
      child: child,
    );

Widget paddedSymmetric(
  Widget? child, {
  double vertical = 0,
  double horizontal = 0,
}) =>
    Padding(
      padding: EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal),
      child: child,
    );

Widget paddedAll(Widget? child, {required double padding}) =>
    Padding(padding: EdgeInsets.all(padding), child: child);

Future<void> launchUrl(BuildContext context, String url) async => await canLaunch(url)
    ? await launch(url)
    : showErrorMessageOverlay("${Str.of(context).errorCantOpenUrl}: $url", context: context);
