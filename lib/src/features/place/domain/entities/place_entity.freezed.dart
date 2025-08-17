// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceEntity {
  String? get id;
  String get name;
  String get description;
  Area get area;
  Level get level;
  List<String> get tags;
  List<String> get urls;
  ParentCategory get parentCategory;
  PlaceCategory get category;
  int get likes;
  DateTime get createdAt;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceEntityCopyWith<PlaceEntity> get copyWith =>
      _$PlaceEntityCopyWithImpl<PlaceEntity>(this as PlaceEntity, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.urls, urls) &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      area,
      level,
      const DeepCollectionEquality().hash(tags),
      const DeepCollectionEquality().hash(urls),
      parentCategory,
      category,
      likes,
      createdAt);

  @override
  String toString() {
    return 'PlaceEntity(id: $id, name: $name, description: $description, area: $area, level: $level, tags: $tags, urls: $urls, parentCategory: $parentCategory, category: $category, likes: $likes, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $PlaceEntityCopyWith<$Res> {
  factory $PlaceEntityCopyWith(
          PlaceEntity value, $Res Function(PlaceEntity) _then) =
      _$PlaceEntityCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String name,
      String description,
      Area area,
      Level level,
      List<String> tags,
      List<String> urls,
      ParentCategory parentCategory,
      PlaceCategory category,
      int likes,
      DateTime createdAt});
}

/// @nodoc
class _$PlaceEntityCopyWithImpl<$Res> implements $PlaceEntityCopyWith<$Res> {
  _$PlaceEntityCopyWithImpl(this._self, this._then);

  final PlaceEntity _self;
  final $Res Function(PlaceEntity) _then;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? area = null,
    Object? level = null,
    Object? tags = null,
    Object? urls = null,
    Object? parentCategory = null,
    Object? category = null,
    Object? likes = null,
    Object? createdAt = null,
  }) {
    return _then(_self.copyWith(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      urls: null == urls
          ? _self.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parentCategory: null == parentCategory
          ? _self.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as ParentCategory,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as PlaceCategory,
      likes: null == likes
          ? _self.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _PlaceEntity extends PlaceEntity {
  const _PlaceEntity(
      {this.id = null,
      required this.name,
      required this.description,
      required this.area,
      required this.level,
      required final List<String> tags,
      required final List<String> urls,
      required this.parentCategory,
      required this.category,
      required this.likes,
      required this.createdAt})
      : _tags = tags,
        _urls = urls,
        super._();

  @override
  @JsonKey()
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final Area area;
  @override
  final Level level;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _urls;
  @override
  List<String> get urls {
    if (_urls is EqualUnmodifiableListView) return _urls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_urls);
  }

  @override
  final ParentCategory parentCategory;
  @override
  final PlaceCategory category;
  @override
  final int likes;
  @override
  final DateTime createdAt;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceEntityCopyWith<_PlaceEntity> get copyWith =>
      __$PlaceEntityCopyWithImpl<_PlaceEntity>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceEntity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.level, level) || other.level == level) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._urls, _urls) &&
            (identical(other.parentCategory, parentCategory) ||
                other.parentCategory == parentCategory) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      area,
      level,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_urls),
      parentCategory,
      category,
      likes,
      createdAt);

  @override
  String toString() {
    return 'PlaceEntity(id: $id, name: $name, description: $description, area: $area, level: $level, tags: $tags, urls: $urls, parentCategory: $parentCategory, category: $category, likes: $likes, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$PlaceEntityCopyWith<$Res>
    implements $PlaceEntityCopyWith<$Res> {
  factory _$PlaceEntityCopyWith(
          _PlaceEntity value, $Res Function(_PlaceEntity) _then) =
      __$PlaceEntityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String description,
      Area area,
      Level level,
      List<String> tags,
      List<String> urls,
      ParentCategory parentCategory,
      PlaceCategory category,
      int likes,
      DateTime createdAt});
}

/// @nodoc
class __$PlaceEntityCopyWithImpl<$Res> implements _$PlaceEntityCopyWith<$Res> {
  __$PlaceEntityCopyWithImpl(this._self, this._then);

  final _PlaceEntity _self;
  final $Res Function(_PlaceEntity) _then;

  /// Create a copy of PlaceEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? description = null,
    Object? area = null,
    Object? level = null,
    Object? tags = null,
    Object? urls = null,
    Object? parentCategory = null,
    Object? category = null,
    Object? likes = null,
    Object? createdAt = null,
  }) {
    return _then(_PlaceEntity(
      id: freezed == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _self.area
          : area // ignore: cast_nullable_to_non_nullable
              as Area,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as Level,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      urls: null == urls
          ? _self._urls
          : urls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      parentCategory: null == parentCategory
          ? _self.parentCategory
          : parentCategory // ignore: cast_nullable_to_non_nullable
              as ParentCategory,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as PlaceCategory,
      likes: null == likes
          ? _self.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
