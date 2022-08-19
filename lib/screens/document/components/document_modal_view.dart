// ignore_for_file: no-magic-number

import 'package:flutter/material.dart';
import 'package:twelv/assets/theme/app_theme.dart';
import 'package:twelv/assets/theme/app_theme_asset_images.dart';
import 'package:twelv/components/app_root_media_query_repository.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_html_action.dart';
import 'package:twelv/model/documents/html_document.dart';
import 'package:twelv/model/documents/html_document_type.dart';

class DocumentModalView extends StatelessWidget {
  final HtmlDocumentContent documentContent;

  const DocumentModalView({
    required this.documentContent,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        padding: EdgeInsets.only(
            top: AppRootMediaQueryRepository.of(context).mediaQueryData.padding.top),
        color: Colors.white,
        child: Column(
          children: <Widget>[
            _DocumentTitleView(type: documentContent.type),
            _DocumentContentView(content: documentContent.content),
          ],
        ),
      );

  static void present(
          {required BuildContext context, required HtmlDocumentContent documentContent}) =>
      showModalBottomSheet<void>(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) => DocumentModalView(
          documentContent: documentContent,
        ),
      );
}

class _DocumentContentView extends StatelessWidget {
  final String content;

  const _DocumentContentView({required this.content, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Expanded(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: AppTextHtmlAction(
          text: content,
          type: AppTextType.body2,
          allowDocuments: false,
        ),
      ));
}

class _DocumentTitleView extends StatelessWidget {
  final HtmlDocumentType type;

  const _DocumentTitleView({
    required this.type,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: <Widget>[
            GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Image(width: 40, height: 40, image: context.theme.closeImage)),
            Expanded(
              child: AppText(
                type.titleForDocument(context),
                type: AppTextType.title2,
                lines: 10,
                align: TextAlign.center,
              ),
            ),
            const SizedBox(
              width: 40,
            )
          ],
        ),
      );
}
