import 'package:twelv/model/documents/html_document.dart';
import 'package:twelv/model/documents/html_document_type.dart';
import 'package:twelv/services/network/api/document_client.dart';

class DocumentModel {
  final DocumentClient _documentClient;

  DocumentModel(this._documentClient);

  Future<HtmlDocumentContent> getDocument(HtmlDocumentType documentType) async =>
      HtmlDocumentContent(
          type: documentType, content: await _documentClient.getDocument(documentType.apiValue));
}
