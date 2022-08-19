import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/autocomplete/places_prediction.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';

part 'places_text_field_state.freezed.dart';

@freezed
@immutable
class PlacesTextFieldState with _$PlacesTextFieldState {
  factory PlacesTextFieldState({
    required bool isWaitingForValidInput,
    required bool isLoading,
    required bool isError,
    List<PlacesPrediction>? predictions,
    PlacesDetails? placesDetails,
  }) = _PlacesTextFieldState;
}
