import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/documents/html_document.dart';

part 'document_state.freezed.dart';

@freezed
@immutable
class DocumentState with _$DocumentState {
  const factory DocumentState.initial() = Initial;

  const factory DocumentState.loading() = Loading;

  const factory DocumentState.apiError(Exception error) = ApiError;

  const factory DocumentState.document(HtmlDocumentContent documentContent) = Document;
}
