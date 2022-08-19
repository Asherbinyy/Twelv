import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/model/documents/html_document_type.dart';

part 'document_event.freezed.dart';

@freezed
@immutable
abstract class DocumentEvent with _$DocumentEvent {
  const factory DocumentEvent.show(HtmlDocumentType type) = Show;
}
