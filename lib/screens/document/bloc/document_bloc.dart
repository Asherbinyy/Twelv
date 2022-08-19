import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/screens/document/bloc/document_event.dart';
import 'package:twelv/screens/document/bloc/document_model.dart';
import 'package:twelv/screens/document/bloc/document_state.dart';

class DocumentBloc extends Bloc<DocumentEvent, DocumentState> {
  final DocumentModel _model;

  DocumentBloc(this._model) : super(const DocumentState.initial());

  @override
  Stream<DocumentState> mapEventToState(DocumentEvent event) async* {
    try {
      if (event is Show) {
        yield const DocumentState.loading();
        yield DocumentState.document(await _model.getDocument(event.type));
      }
    } on Exception catch (e) {
      yield DocumentState.apiError(e);
    }
  }
}
