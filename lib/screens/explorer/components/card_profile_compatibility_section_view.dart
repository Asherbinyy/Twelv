import 'package:flutter/material.dart';
// import 'package:flutter_html/shims/dart_ui.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_compatibility_indicator_view.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/user/compatibility.dart';
import 'package:twelv/screens/explorer/components/compatibilities_popup.dart';

class CardProfileCompatibilitySectionView extends StatelessWidget {
  final Compatibility compatibility;
  final double blurDefaultValue;
  final VoidCallback onPressedPremium;
  final int currentUserCredits;

  const CardProfileCompatibilitySectionView(
      {required this.compatibility,
      required this.onPressedPremium,
      this.blurDefaultValue = 75, // ignore: no-magic-number
      this.currentUserCredits = 0, // ignore: no-magic-number
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bool isBlurred = compatibility.sexualityScore == null;
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: AppText(
              Str.of(context).profileCardCompatibilitiesHeaderTitle,
              type: AppTextType.cardProfileSectionHeader,
            ),
          ),
          Row(
            children: <Widget>[
              const Spacer(),
              if (compatibility.complementarityScore != null)
                AppCompatibilityIndicatorView(
                  value: compatibility.complementarityScore!,
                  color: const Color(0xfff25836),
                  name: Str.of(context).profileCardCompatibilitiesAffinitiesSubtitle,
                  callback: (String title, double value) => _showCompatibility(context,
                      title: title, content: compatibility.complementarityText, value: value),
                ),
              const Spacer(
                flex: 2,
              ),
              if (compatibility.sexualityScore != null || isBlurred)
                AppCompatibilityIndicatorView(
                  value: isBlurred ? blurDefaultValue : compatibility.sexualityScore!,
                  isBlurred: isBlurred,
                  color: const Color(0xfff28f78),
                  name: Str.of(context).profileCardCompatibilitiesSexualitySubtitle,
                  callback: (String title, double value) => _showCompatibility(context,
                      title: title, content: compatibility.sexualityText, value: value),
                ),
              const Spacer(
                flex: 2,
              ),
              if (compatibility.solidityScore != null)
                AppCompatibilityIndicatorView(
                  value: compatibility.solidityScore!,
                  color: const Color(0xffffcab4),
                  name: Str.of(context).profileCardCompatibilitiesStabilitySubtitle,
                  callback: (String title, double value) => _showCompatibility(context,
                      title: title, content: compatibility.solidityText, value: value),
                ),
              const Spacer(),
            ],
          ),
          Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  const Spacer(
                    flex: 2,
                  ),
                  if (compatibility.complicityScore != null || isBlurred)
                    AppCompatibilityIndicatorView(
                      value: isBlurred ? blurDefaultValue : compatibility.complicityScore!,
                      isBlurred: isBlurred,
                      color: const Color(0xffa70744),
                      name: Str.of(context).profileCardCompatibilitiesComplicitySubtitle,
                      callback: (String title, double value) => _showCompatibility(context,
                          title: title, content: compatibility.complicityText, value: value),
                    ),
                  const Spacer(),
                  if (compatibility.feelingsScore != null || isBlurred)
                    AppCompatibilityIndicatorView(
                      value: isBlurred ? blurDefaultValue : compatibility.feelingsScore!,
                      isBlurred: isBlurred,
                      color: const Color(0xff00a1d3),
                      name: Str.of(context).profileCardCompatibilitiesFeelingsSubtitle,
                      callback: (String title, double value) => _showCompatibility(context,
                          title: title, content: compatibility.feelingsText, value: value),
                    ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
              if (isBlurred)
                Padding(
                  padding: const EdgeInsets.only(
                      left: 27, right: 27, top: 20), // ignore: no-magic-number
                  child: AppButtonFilled(
                    currentUserCredits > 0
                        ? Str.of(context).compalibilitesSectionBlockedUseCreditButtonTitle
                        : Str.of(context).compalibilitesSectionBlockedButtonTitle,
                    type: AppButtonType.secondary,
                    onPressed: onPressedPremium,
                  ),
                )
            ],
          ),
        ],
      ),
    );
  }

  // region Action

  void _showCompatibility(BuildContext context,
          {required String title, required double value, String? content}) =>
      showDialog(
          context: context,
          builder: (_) => CompatibilitiesPopup(title: title, content: content, value: value));

  // endregion
}
