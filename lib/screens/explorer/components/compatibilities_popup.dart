import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';

class CompatibilitiesPopup extends StatelessWidget {
  final String title;
  final String? content;
  final double value;

  const CompatibilitiesPopup({required this.title, required this.value, this.content, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.fromLTRB(15, 60, 15, 62),
        child: Center(
          child: ClipRRect(
            // ignore: no-magic-number
            borderRadius: BorderRadius.circular(15.0),
            child: Container(
              color: Colors.white,
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints boxConstraints) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const _CompatibilitiesPopupTitle(),
                    _buildContent(context, boxConstraints),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  Widget _buildContent(BuildContext context, BoxConstraints boxConstraints) => ConstrainedBox(
        // ignore: no-magic-number
        constraints: BoxConstraints(maxHeight: boxConstraints.maxHeight - 100),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Scrollbar(
            isAlwaysShown: true,
            child: SingleChildScrollView(
              child: _buildCompatibility(context),
            ),
          ),
        ),
      );

  Widget _buildCompatibility(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 20, right: 15, bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              children: <Widget>[
                AppText(
                  title,
                  type: AppTextType.popUpCompatibilitySectionHeader,
                ),
                const Spacer(),
                AppText(
                  "${value.round().toStringAsFixed(0)}%",
                  type: AppTextType.popUpCompatibilitySectionValue,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (content != null)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  content!,
                  textAlign: TextAlign.start,
                  style: context.theme.textTheme.bodyText1!
                      .copyWith(fontWeight: FontWeight.w500, color: context.theme.textDarkColor),
                ),
              ),
          ],
        ),
      );
}

class _CompatibilitiesPopupTitle extends StatelessWidget {
  const _CompatibilitiesPopupTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Image(width: 40, height: 40, image: context.theme.closeImage)),
            const Spacer(),
            AppText(
              Str.of(context).compatibilitiesPopupTitle,
              type: AppTextType.title2,
            ),
            const Spacer(),
            const SizedBox(
              width: 40,
            )
          ],
        ),
      );
}
