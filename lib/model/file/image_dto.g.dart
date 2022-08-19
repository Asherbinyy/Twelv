// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageDto _$ImageDtoFromJson(Map<String, dynamic> json) {
  return ImageDto(
    json['id'] as int,
    json['url'] as String,
  );
}

Map<String, dynamic> _$ImageDtoToJson(ImageDto instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
    };
