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
  String get name;
  String get address;
  List<String> get images;
  String get description;
  @JsonKey(name: "is_favorite")
  bool get isFavorite;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PlaceModelCopyWith<PlaceModel> get copyWith =>
      _$PlaceModelCopyWithImpl<PlaceModel>(this as PlaceModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PlaceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other.images, images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address,
      const DeepCollectionEquality().hash(images), description, isFavorite);

  @override
  String toString() {
    return 'PlaceModel(name: $name, address: $address, images: $images, description: $description, isFavorite: $isFavorite)';
  }
}

/// @nodoc
abstract mixin class $PlaceModelCopyWith<$Res> {
  factory $PlaceModelCopyWith(
          PlaceModel value, $Res Function(PlaceModel) _then) =
      _$PlaceModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String address,
      List<String> images,
      String description,
      @JsonKey(name: "is_favorite") bool isFavorite});
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
    Object? name = null,
    Object? address = null,
    Object? images = null,
    Object? description = null,
    Object? isFavorite = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _PlaceModel extends PlaceModel {
  const _PlaceModel(
      {required this.name,
      required this.address,
      required final List<String> images,
      required this.description,
      @JsonKey(name: "is_favorite") required this.isFavorite})
      : _images = images,
        super._();

  @override
  final String name;
  @override
  final String address;
  final List<String> _images;
  @override
  List<String> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String description;
  @override
  @JsonKey(name: "is_favorite")
  final bool isFavorite;

  /// Create a copy of PlaceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PlaceModelCopyWith<_PlaceModel> get copyWith =>
      __$PlaceModelCopyWithImpl<_PlaceModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PlaceModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address,
      const DeepCollectionEquality().hash(_images), description, isFavorite);

  @override
  String toString() {
    return 'PlaceModel(name: $name, address: $address, images: $images, description: $description, isFavorite: $isFavorite)';
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
      {String name,
      String address,
      List<String> images,
      String description,
      @JsonKey(name: "is_favorite") bool isFavorite});
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
    Object? name = null,
    Object? address = null,
    Object? images = null,
    Object? description = null,
    Object? isFavorite = null,
  }) {
    return _then(_PlaceModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _self._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _self.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
