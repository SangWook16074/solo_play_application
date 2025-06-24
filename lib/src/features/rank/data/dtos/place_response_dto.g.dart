// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlaceResponseDtoImpl _$$PlaceResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PlaceResponseDtoImpl(
      name: json['name'] as String,
      address: json['address'] as String,
      images:
          (json['images'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      isFavorite: json['is_favorite'] as bool,
    );

Map<String, dynamic> _$$PlaceResponseDtoImplToJson(
        _$PlaceResponseDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'address': instance.address,
      'images': instance.images,
      'description': instance.description,
      'is_favorite': instance.isFavorite,
    };
