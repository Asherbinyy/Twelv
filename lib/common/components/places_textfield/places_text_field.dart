import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_bloc.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_event.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_state.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_prediction.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';

class PlacesTextField extends StatefulWidget {
  final Widget Function(FocusNode, TextEditingController, ValueChanged<String>?) textFieldBuilder;
  final List<Widget> Function(List<String>)? dropdownItemsBuilder;
  final PlacesDetails? initialLocation;
  final void Function(PlacesDetails?)? onLocationSelected;
  final AssetImage? poweredByGoogleImage;
  final String? noResultsMessage;
  final String? errorMessage;

  const PlacesTextField({
    required this.textFieldBuilder,
    this.dropdownItemsBuilder,
    this.initialLocation,
    this.onLocationSelected,
    this.noResultsMessage,
    this.errorMessage,
    this.poweredByGoogleImage,
  });

  @override
  _PlacesTextFieldState createState() => _PlacesTextFieldState();
}

class _PlacesTextFieldState extends State<PlacesTextField> {
  // region Properties
  late final TextEditingController _controller;
  final FocusNode _focusNode = FocusNode();
  final LayerLink _layerLink = LayerLink();

  OverlayEntry? _overlayEntry;

  // endregion

  // region Lifecycle

  @override
  void initState() {
    _setupController();
    _setupFocusListener();
    if (widget.initialLocation != null) {
      context
          .read<PlacesTextFieldBloc>()
          .add(PlacesTextFieldEvent.initialLocation(location: widget.initialLocation));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PlacesTextFieldBloc, PlacesTextFieldState>(
      builder: (BuildContext context, PlacesTextFieldState state) {
        return CompositedTransformTarget(
          link: _layerLink,
          child: widget.textFieldBuilder(_focusNode, _controller, (String? text) {
            _search(_controller.text);
          }),
        );
      },
      listener: (BuildContext context, PlacesTextFieldState state) {
        _hideOverlay();
        if (_focusNode.hasFocus && state.placesDetails == null) {
          _showOverlay();
        } else if (state.placesDetails != null) {
          widget.onLocationSelected?.call(state.placesDetails);
          _controller.text = state.placesDetails?.name ?? "";
          _focusNode.unfocus();
        }
      },
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  // endregion

  // region Setup

  void _setupController() {
    _controller = TextEditingController()
      ..addListener(() {
        if (!_focusNode.hasFocus) {
          _hideOverlay();
        }
      });
  }

  void _setupFocusListener() {
    _focusNode.addListener(() {
      final PlacesTextFieldState state = context.read<PlacesTextFieldBloc>().state;
      if (_focusNode.hasFocus && state.isWaitingForValidInput) {
        _showOverlay();
      } else if (!_focusNode.hasFocus && state.placesDetails == null) {
        _controller.text = "";
      }
    });
  }

  // endregion

  // region Build overlay

  OverlayEntry _buildOverlay() {
    final Size? size = (context.findRenderObject() as RenderBox?)?.size;
    return OverlayEntry(
        builder: (BuildContext context) => Positioned(
              width: size?.width,
              child: CompositedTransformFollower(
                  link: _layerLink,
                  showWhenUnlinked: false,
                  offset: Offset(0.0, (size?.height ?? 0) + 5.0),
                  child: _buildResultsList()),
            ));
  }

  Widget _buildResultsList() => Material(
        elevation: 4.0,
        color: Theme.of(context).primaryColor,
        child: ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: _buildResultsListForCurrentState() ?? <Widget>[],
        ),
      );

  List<Widget>? _buildResultsListForCurrentState() {
    final PlacesTextFieldState state = context.read<PlacesTextFieldBloc>().state;
    if (state.isWaitingForValidInput) {
      return _buildResultsPoweredByGoogle();
    } else if (state.isLoading) {
      return _buildResultsProgress();
    } else if (state.isError) {
      return _buildResultsError(message: widget.errorMessage);
    } else if (state.predictions?.isEmpty == true) {
      return _buildResultsError(message: widget.noResultsMessage);
    }
    return _buildResultsListWithItemsBuilder(state) ??
        _buildResultsListWithDefaultItemsBuilder(state);
  }

  List<Widget>? _buildResultsListWithItemsBuilder(PlacesTextFieldState state) {
    final List<String> predictions =
        state.predictions?.map((PlacesPrediction prediction) => prediction.description).toList() ??
            <String>[];
    return widget.dropdownItemsBuilder
        ?.call(predictions)
        .asMap()
        .entries
        .map((MapEntry<int, Widget> entry) => InkWell(
            onTap: () {
              if (state.predictions?.isNotEmpty == true) {
                _select(state.predictions![entry.key]);
              }
            },
            child: entry.value))
        .toList();
  }

  List<Widget>? _buildResultsListWithDefaultItemsBuilder(PlacesTextFieldState state) =>
      state.predictions
          ?.map((PlacesPrediction prediction) =>
              ListTile(title: Text(prediction.description), onTap: () => _select(prediction)))
          .toList();

  List<Widget> _buildResultsPoweredByGoogle() => <Widget>[
        if (widget.poweredByGoogleImage != null)
          SizedBox(height: 50, child: Center(child: Image(image: widget.poweredByGoogleImage!)))
      ];

  List<Widget> _buildResultsProgress() => <Widget>[
        const SizedBox(
            height: 50,
            child:
                Center(child: SizedBox(width: 25, height: 25, child: CircularProgressIndicator())))
      ];

  List<Widget> _buildResultsError({required String? message}) =>
      <Widget>[ListTile(title: Text(message ?? "Error"))];

// endregion

// region Update

  void _showOverlay() {
    _overlayEntry = _buildOverlay();
    Overlay.of(context)?.insert(_overlayEntry!);
  }

  void _hideOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

// endregion

// region Action

  void _search(String text) {
    widget.onLocationSelected?.call(null);
    context
        .read<PlacesTextFieldBloc>()
        .add(PlacesTextFieldEvent.searchTextEntered(searchText: text));
  }

  void _select(PlacesPrediction prediction) {
    context.read<PlacesTextFieldBloc>().add(PlacesTextFieldEvent.predictionSelected(
        id: prediction.placeId, name: prediction.description));
  }

// endregion

}
