import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/loading/loading_dialog.dart';
import 'package:twelv/components/app_error.dart';
import 'package:twelv/di/di.dart';
import 'package:twelv/screens/document/bloc/document_bloc.dart';
import 'package:twelv/screens/document/bloc/document_state.dart';
import 'package:twelv/screens/document/components/document_modal_view.dart';

class DocumentViewBlocParent extends StatelessWidget {
  final WidgetBuilder builder;

  const DocumentViewBlocParent({required this.builder, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider<DocumentBloc>(
        create: (_) => DependenciesContainer().get<DocumentBloc>(),
        child: BlocConsumer<DocumentBloc, DocumentState>(
            builder: (BuildContext context, DocumentState state) => builder(context),
            listener: (BuildContext context, DocumentState state) {
              manageLoadingView(context, show: state is Loading);

              if (state is ApiError) {
                showErrorOverlay(state.error, context: context);
              } else if (state is Document) {
                DocumentModalView.present(context: context, documentContent: state.documentContent);
              }
            }),
      );
}
