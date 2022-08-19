import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:twelv/common/components/places_textfield/model/places_details.dart';

part 'places_text_field_event.freezed.dart';

@freezed
@immutable
abstract class PlacesTextFieldEvent with _$PlacesTextFieldEvent {
  const factory PlacesTextFieldEvent.initialLocation({required PlacesDetails? location}) =
      InitialLocation;

  const factory PlacesTextFieldEvent.searchTextEntered({required String? searchText}) =
      SearchTextEntered;

  const factory PlacesTextFieldEvent.predictionSelected(
      {required String id, required String name}) = PredictionSelected;
}
