import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/utils/widget_utils.dart';
import 'package:twelv/components/app_text.dart';
import 'package:twelv/components/app_text_html.dart';
import 'package:twelv/di/app_module.dart';
import 'package:twelv/model/documents/html_document_type.dart';
import 'package:twelv/screens/document/bloc/document_bloc.dart';
import 'package:twelv/screens/document/bloc/document_event.dart';
import 'package:twelv/screens/document/document_view_bloc_parent.dart';

class AppTextHtmlAction extends StatelessWidget {
  final String text;
  final AppTextType type;
  final TextAlign textAlign;
  final bool allowDocuments;

  const AppTextHtmlAction(
      {required this.text,
      this.type = AppTextType.body1,
      this.textAlign = TextAlign.start,
      this.allowDocuments = true,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) => DocumentViewBlocParent(
        builder: (BuildContext context) => AppTextHtml(
          text,
          type: type,
          textAlign: textAlign,
          onLinkTap: (String? url, _, __, ___) async {
            final HtmlDocumentType? documentType = HtmlDocumentTypeExtension.fromUrl(url);
            if (documentType != null && allowDocuments) {
              context.read<DocumentBloc>().add(DocumentEvent.show(documentType));
            } else if (url != null) {
              launchUrl(context, url);
            } else {
              logger().d("Not found action for $url");
            }
          },
        ),
      );
}
