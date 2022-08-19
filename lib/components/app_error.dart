import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_overlay_route.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/services/errors/error_resolver.dart';

Future<dynamic> showErrorOverlay(Exception error,
        {required BuildContext context, Duration duration = const Duration(seconds: 5)}) =>
    showErrorMessageOverlay(
        DependenciesContainer().get<ErrorResolverService>().resolve(context, error: error),
        context: context,
        duration: duration);

Future<dynamic> showErrorMessageOverlay(String errorMsg,
    {required BuildContext context, Duration duration = const Duration(seconds: 5)}) {
  final GenericOverlayRoute<dynamic> errorRoute = GenericOverlayRoute<dynamic>(
      overlayEntriesBuilder: () => <OverlayEntry>[
            OverlayEntry(
                builder: (BuildContext context) =>
                    _errorMessageToastTopBarWidget(errorMsg, context))
          ],
      autoDismissTimer: duration);
  return Navigator.of(context, rootNavigator: true)
      .pushAndRemoveUntil(errorRoute, (Route<dynamic> route) => route is! GenericOverlayRoute);
}

Widget _errorMessageToastTopBarWidget(String errorMsg, BuildContext context) {
  return SafeArea(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
            padding: const EdgeInsets.all(10),
            color: context.theme.errorDarkColor,
            child: Center(
              child: AppText(
                errorMsg,
                type: AppTextType.body2,
                color: Colors.white,
                align: TextAlign.center,
              ),
            ))
      ],
    ),
  );
}
