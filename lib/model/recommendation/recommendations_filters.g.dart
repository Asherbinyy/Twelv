// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendations_filters.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class RecommendationsFiltersAdapter
    extends TypeAdapter<RecommendationsFilters> {
  @override
  final int typeId = 0;

  @override
  RecommendationsFilters read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RecommendationsFilters(
      ageMin: fields[0] as int,
      ageMax: fields[1] as int,
      distance: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, RecommendationsFilters obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ageMin)
      ..writeByte(1)
      ..write(obj.ageMax)
      ..writeByte(2)
      ..write(obj.distance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RecommendationsFiltersAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendationsFilters _$RecommendationsFiltersFromJson(
    Map<String, dynamic> json) {
  return RecommendationsFilters(
    ageMin: json['age_min'] as int,
    ageMax: json['age_max'] as int,
    distance: json['distance'] as int,
  );
}

Map<String, dynamic> _$RecommendationsFiltersToJson(
        RecommendationsFilters instance) =>
    <String, dynamic>{
      'age_min': instance.ageMin,
      'age_max': instance.ageMax,
      'distance': instance.distance,
    };
