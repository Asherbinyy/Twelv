// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/shims/dart_ui_real.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_paint_pie_chart_circle_border_view.dart';
import 'package:twelv/components/app_text.dart';

typedef CompatibilityCallback = void Function(String, double);

class AppCompatibilityIndicatorView extends StatelessWidget {
  final String name;
  final double value;
  final Color color;
  final double size;
  final CompatibilityCallback? callback;
  final bool isBlurred;

  const AppCompatibilityIndicatorView({
    required this.name,
    required this.value,
    required this.color,
    this.size = 50,
    this.callback,
    this.isBlurred = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double blurSigma = isBlurred ? 5 : 0;
    const double margin = 7.5;
    const double marginTop = margin + 5;
    return Padding(
      padding: const EdgeInsets.fromLTRB(margin, marginTop, margin, margin),
      child: ClipRRect(
        child: GestureDetector(
          onTap: () => isBlurred ? null : callback?.call(name, value),
          child: Container(
            padding: const EdgeInsets.all(margin),
            child: Column(
              children: <Widget>[
                SizedBox(
                  width: size,
                  height: size,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: size,
                        height: size,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 0.5, color: context.theme.primaryColorDark.withOpacity(0.2)),
                          shape: BoxShape.circle,
                        ),
                      ),
                      AppPaintPieChartCircleBorderView(
                        circlePart: value / 100,
                        color: color,
                        radius: size / 2,
                      ),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.only(top: 3),
                          child: AppText(
                            "${value.round().toStringAsFixed(0)}%",
                            color: color,
                            type: AppTextType.title4,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: blurSigma,
                    sigmaY: blurSigma,
                  ),
                  child: Text(name,
                      style: context.theme.textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w600, color: context.theme.textDarkColor)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
