// ignore_for_file: no-equal-arguments, no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_button_filled.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_html_action.dart';
import 'package:twelv/generated/l10n.dart';
import 'package:twelv/model/profile/gender.dart';

class GenderPrivacyDialog extends StatefulWidget {
  final Gender gender;

  const GenderPrivacyDialog({
    required this.gender,
    Key? key,
  }) : super(key: key);

  @override
  _GenderPrivacyDialogState createState() => _GenderPrivacyDialogState();
}

class _GenderPrivacyDialogState extends State<GenderPrivacyDialog> {
  bool _checked = false;

  @override
  Widget build(BuildContext context) => SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
                color: Colors.white,
                child: SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(20, 31, 20, 20),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        width: double.infinity,
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 30.0),
                              child: Center(
                                child: AppText(
                                  Str.of(context).genderPrivacyDialogTitle,
                                  type: AppTextType.title2,
                                  align: TextAlign.center,
                                ),
                              ),
                            ),
                            GestureDetector(
                                onTap: () => Navigator.of(context).pop(),
                                child:
                                    Image(width: 40, height: 40, image: context.theme.closeImage)),
                          ],
                        ),
                      ),
                      padded(
                          AppText(
                            Str.of(context).genderPrivacyDialogMainText,
                            type: AppTextType.body1,
                          ),
                          top: 23),
                      padded(Row(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () => setState(() {
                              _checked = !_checked;
                            }),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 10, 15),
                                child: Image(
                                  image: _checked
                                      ? context.theme.uncheckImage
                                      : context.theme.checkImage,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: AppTextHtmlAction(
                              text: Str.of(context).genderPrivacyDialogCheckboxText,
                            ),
                          )
                        ],
                      )),
                      padded(
                          AppButtonFilled(
                            Str.of(context).genderPrivacyDialogContinueButtonTitle,
                            onPressed: () =>
                                Navigator.of(context).pop(_checked ? widget.gender : null),
                          ),
                          top: 20),
                    ],
                  ),
                )),
          ),
        ),
      ));
}
