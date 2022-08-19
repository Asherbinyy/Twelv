import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_dto.g.dart';

@JsonSerializable()
class ImageDto {
  final int id;

  final String url;

  ImageDto(this.id, this.url);

  factory ImageDto.fromJson(Map<String, dynamic> json) => _$ImageDtoFromJson(json);

  Map<String, dynamic> toJson() => _$ImageDtoToJson(this);
}
