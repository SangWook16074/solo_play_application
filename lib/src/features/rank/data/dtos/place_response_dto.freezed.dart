// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceResponseDto _$PlaceResponseDtoFromJson(Map<String, dynamic> json) {
  return _PlaceResponseDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceResponseDto {
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  List<String> get images => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "is_favorite")
  bool get isFavorite => throw _privateConstructorUsedError;

  /// Serializes this PlaceResponseDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceResponseDtoCopyWith<PlaceResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceResponseDtoCopyWith<$Res> {
  factory $PlaceResponseDtoCopyWith(
          PlaceResponseDto value, $Res Function(PlaceResponseDto) then) =
      _$PlaceResponseDtoCopyWithImpl<$Res, PlaceResponseDto>;
  @useResult
  $Res call(
      {String name,
      String address,
      List<String> images,
      String description,
      @JsonKey(name: "is_favorite") bool isFavorite});
}

/// @nodoc
class _$PlaceResponseDtoCopyWithImpl<$Res, $Val extends PlaceResponseDto>
    implements $PlaceResponseDtoCopyWith<$Res> {
  _$PlaceResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceResponseDto
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
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceResponseDtoImplCopyWith<$Res>
    implements $PlaceResponseDtoCopyWith<$Res> {
  factory _$$PlaceResponseDtoImplCopyWith(_$PlaceResponseDtoImpl value,
          $Res Function(_$PlaceResponseDtoImpl) then) =
      __$$PlaceResponseDtoImplCopyWithImpl<$Res>;
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
class __$$PlaceResponseDtoImplCopyWithImpl<$Res>
    extends _$PlaceResponseDtoCopyWithImpl<$Res, _$PlaceResponseDtoImpl>
    implements _$$PlaceResponseDtoImplCopyWith<$Res> {
  __$$PlaceResponseDtoImplCopyWithImpl(_$PlaceResponseDtoImpl _value,
      $Res Function(_$PlaceResponseDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceResponseDto
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
    return _then(_$PlaceResponseDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceResponseDtoImpl implements _PlaceResponseDto {
  const _$PlaceResponseDtoImpl(
      {required this.name,
      required this.address,
      required final List<String> images,
      required this.description,
      @JsonKey(name: "is_favorite") required this.isFavorite})
      : _images = images;

  factory _$PlaceResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceResponseDtoImplFromJson(json);

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

  @override
  String toString() {
    return 'PlaceResponseDto(name: $name, address: $address, images: $images, description: $description, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceResponseDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, address,
      const DeepCollectionEquality().hash(_images), description, isFavorite);

  /// Create a copy of PlaceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceResponseDtoImplCopyWith<_$PlaceResponseDtoImpl> get copyWith =>
      __$$PlaceResponseDtoImplCopyWithImpl<_$PlaceResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceResponseDto implements PlaceResponseDto {
  const factory _PlaceResponseDto(
          {required final String name,
          required final String address,
          required final List<String> images,
          required final String description,
          @JsonKey(name: "is_favorite") required final bool isFavorite}) =
      _$PlaceResponseDtoImpl;

  factory _PlaceResponseDto.fromJson(Map<String, dynamic> json) =
      _$PlaceResponseDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get address;
  @override
  List<String> get images;
  @override
  String get description;
  @override
  @JsonKey(name: "is_favorite")
  bool get isFavorite;

  /// Create a copy of PlaceResponseDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceResponseDtoImplCopyWith<_$PlaceResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
