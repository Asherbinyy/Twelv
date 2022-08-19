import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/components/app_text.dart';

class CardProfileDescriptionSectionView extends StatelessWidget {
  final String description;

  const CardProfileDescriptionSectionView({required this.description, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: AppText(
        description,
        type: AppTextType.body1,
        color: context.theme.textDarkColor,
      ),
    );
  }
}
