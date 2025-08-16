// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlaceModel {
  String? get id;
  String get name;
  String get description;
  String get area;
  String get level;
  List<String> get tags;
  List<String> get urls;
  String get parentCategory;
  String get category;
  int get likes;
  DateTime get createdAt;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      _$PlaceModelCopyWithImpl<PlaceModel>(this as PlaceModel, _$identity);

  /// Serializes this PlaceModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'PlaceModel(id: $id, name: $name, description: $description, area: $area, level: $level, tags: $tags, urls: $urls, parentCategory: $parentCategory, category: $category, likes: $likes, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
          PlaceModel value, $Res Function(PlaceModel) _then) =
      _$PlaceModelCopyWithImpl;
  @useResult
  $Res call(
      {String? id,
      String name,
      String description,
      String area,
      String level,
      List<String> tags,
      List<String> urls,
      String parentCategory,
      String category,
      int likes,
      DateTime createdAt});
}

/// @nodoc
class _$PlaceModelCopyWithImpl<$Res> implements $PlaceModelCopyWith<$Res> {
  _$PlaceModelCopyWithImpl(this._self, this._then);

  final PlaceModel _self;
  final $Res Function(PlaceModel) _then;

  /// Create a copy of PlaceModel
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
              as String,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _PlaceModel implements PlaceModel {
  const _PlaceModel(
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
        _urls = urls;
  factory _PlaceModel.fromJson(Map<String, dynamic> json) =>
      _$PlaceModelFromJson(json);

  @override
  @JsonKey()
  final String? id;
  @override
  final String name;
  @override
  final String description;
  @override
  final String area;
  @override
  final String level;
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
  final String parentCategory;
  @override
  final String category;
  @override
  final int likes;
  @override
  final DateTime createdAt;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceModelCopyWith<_PlaceModel> get copyWith =>
      __$PlaceModelCopyWithImpl<_PlaceModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceModel &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return 'PlaceModel(id: $id, name: $name, description: $description, area: $area, level: $level, tags: $tags, urls: $urls, parentCategory: $parentCategory, category: $category, likes: $likes, createdAt: $createdAt)';
  }
}

/// @nodoc
abstract mixin class _$PlaceModelCopyWith<$Res>
    implements $PlaceModelCopyWith<$Res> {
  factory _$PlaceModelCopyWith(
          _PlaceModel value, $Res Function(_PlaceModel) _then) =
      __$PlaceModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? id,
      String name,
      String description,
      String area,
      String level,
      List<String> tags,
      List<String> urls,
      String parentCategory,
      String category,
      int likes,
      DateTime createdAt});
}

/// @nodoc
class __$PlaceModelCopyWithImpl<$Res> implements _$PlaceModelCopyWith<$Res> {
  __$PlaceModelCopyWithImpl(this._self, this._then);

  final _PlaceModel _self;
  final $Res Function(_PlaceModel) _then;

  /// Create a copy of PlaceModel
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
    return _then(_PlaceModel(
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
              as String,
      level: null == level
          ? _self.level
          : level // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      category: null == category
          ? _self.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
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
