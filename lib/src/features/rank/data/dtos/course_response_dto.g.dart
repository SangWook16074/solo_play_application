// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CourseResponseDtoImpl _$$CourseResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CourseResponseDtoImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      isFavorite: json['is_favorite'] as bool,
    );

Map<String, dynamic> _$$CourseResponseDtoImplToJson(
        _$CourseResponseDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'images': instance.images,
      'description': instance.description,
      'is_favorite': instance.isFavorite,
    };
