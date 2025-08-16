// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceModel _$PlaceModelFromJson(Map<String, dynamic> json) => _PlaceModel(
      id: json['id'] as String? ?? null,
      name: json['name'] as String,
      description: json['description'] as String,
      area: json['area'] as String,
      level: json['level'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      urls: (json['urls'] as List<dynamic>).map((e) => e as String).toList(),
      parentCategory: json['parentCategory'] as String,
      category: json['category'] as String,
      likes: (json['likes'] as num).toInt(),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$PlaceModelToJson(_PlaceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'area': instance.area,
      'level': instance.level,
      'tags': instance.tags,
      'urls': instance.urls,
      'parentCategory': instance.parentCategory,
      'category': instance.category,
      'likes': instance.likes,
      'createdAt': instance.createdAt.toIso8601String(),
    };
