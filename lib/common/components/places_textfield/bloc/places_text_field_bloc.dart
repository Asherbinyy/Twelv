import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_event.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_model.dart';
import 'package:twelv/common/components/places_textfield/bloc/places_text_field_state.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_autocomplete_response.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_prediction.dart';
import 'package:twelv/common/components/places_textfield/model/details/places_details_response.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';

class PlacesTextFieldBloc extends Bloc<PlacesTextFieldEvent, PlacesTextFieldState> {
  PlacesTextFieldBloc(this._model)
      : super(PlacesTextFieldState(isWaitingForValidInput: true, isLoading: false, isError: false));

  // region Properties

  final PlacesTextFieldModel _model;

  // endregion

  // region Lifecycle

  @override
  Stream<Transition<PlacesTextFieldEvent, PlacesTextFieldState>> transformEvents(
      Stream<PlacesTextFieldEvent> events, transitionFn) {
    final Stream<PlacesTextFieldEvent> debounceStreams = events
        .where((PlacesTextFieldEvent event) => event is SearchTextEntered)
        .debounceTime(const Duration(milliseconds: 500));
    final Stream<PlacesTextFieldEvent> nonDebounceStreams =
        events.where((PlacesTextFieldEvent event) => event is! SearchTextEntered);
    return super.transformEvents(
      debounceStreams.mergeWith([nonDebounceStreams]),
      transitionFn,
    );
  }

  @override
  Stream<PlacesTextFieldState> mapEventToState(PlacesTextFieldEvent event) async* {
    if (event is InitialLocation) {
      yield state.copyWith(
          isWaitingForValidInput: false,
          isLoading: false,
          isError: false,
          predictions: <PlacesPrediction>[],
          placesDetails: event.location);
    } else if (event is SearchTextEntered) {
      yield* _handleSearchTextEntered(event);
    } else if (event is PredictionSelected) {
      yield* _handlePredictionSelected(event);
    }
  }

  // endregion

  // region Search text entered

  Stream<PlacesTextFieldState> _handleSearchTextEntered(SearchTextEntered event) async* {
    if ((event.searchText?.length ?? 0) >= _model.minimumSearchTextLength) {
      yield state.copyWith(
          isWaitingForValidInput: false,
          isLoading: true,
          isError: false,
          predictions: <PlacesPrediction>[],
          placesDetails: null);
      final PlacesAutocompleteResponse response = await _model.autocomplete(event.searchText ?? "");
      yield state.copyWith(
          isLoading: false,
          isWaitingForValidInput: false,
          isError: !response.isValid,
          predictions: response.predictions,
          placesDetails: null);
    } else {
      yield state.copyWith(
          isWaitingForValidInput: true,
          isLoading: false,
          isError: false,
          predictions: <PlacesPrediction>[],
          placesDetails: null);
    }
  }

// endregion

// region Prediction selected

  Stream<PlacesTextFieldState> _handlePredictionSelected(PredictionSelected event) async* {
    yield state.copyWith(
        isWaitingForValidInput: false,
        isLoading: true,
        isError: false,
        predictions: <PlacesPrediction>[],
        placesDetails: null);
    final PlacesDetailsResponse response = await _model.details(event.id);
    yield state.copyWith(
        isWaitingForValidInput: false,
        isLoading: false,
        isError: !response.isValid,
        predictions: <PlacesPrediction>[],
        placesDetails: response.isValid
            ? PlacesDetails(
                id: event.id,
                name: event.name,
                lat: response.result.geometry.location.lat,
                lng: response.result.geometry.location.lng)
            : null);
  }

// endregion
}
