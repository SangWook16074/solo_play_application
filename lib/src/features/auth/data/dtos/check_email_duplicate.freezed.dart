// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_email_duplicate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CheckEmailDuplicate {
  String get email;

  /// Create a copy of CheckEmailDuplicate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CheckEmailDuplicateCopyWith<CheckEmailDuplicate> get copyWith =>
      _$CheckEmailDuplicateCopyWithImpl<CheckEmailDuplicate>(
          this as CheckEmailDuplicate, _$identity);

  /// Serializes this CheckEmailDuplicate to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CheckEmailDuplicate &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'CheckEmailDuplicate(email: $email)';
  }
}

/// @nodoc
abstract mixin class $CheckEmailDuplicateCopyWith<$Res> {
  factory $CheckEmailDuplicateCopyWith(
          CheckEmailDuplicate value, $Res Function(CheckEmailDuplicate) _then) =
      _$CheckEmailDuplicateCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$CheckEmailDuplicateCopyWithImpl<$Res>
    implements $CheckEmailDuplicateCopyWith<$Res> {
  _$CheckEmailDuplicateCopyWithImpl(this._self, this._then);

  final CheckEmailDuplicate _self;
  final $Res Function(CheckEmailDuplicate) _then;

  /// Create a copy of CheckEmailDuplicate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _CheckEmailDuplicate implements CheckEmailDuplicate {
  const _CheckEmailDuplicate({required this.email});
  factory _CheckEmailDuplicate.fromJson(Map<String, dynamic> json) =>
      _$CheckEmailDuplicateFromJson(json);

  @override
  final String email;

  /// Create a copy of CheckEmailDuplicate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CheckEmailDuplicateCopyWith<_CheckEmailDuplicate> get copyWith =>
      __$CheckEmailDuplicateCopyWithImpl<_CheckEmailDuplicate>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CheckEmailDuplicateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckEmailDuplicate &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString() {
    return 'CheckEmailDuplicate(email: $email)';
  }
}

/// @nodoc
abstract mixin class _$CheckEmailDuplicateCopyWith<$Res>
    implements $CheckEmailDuplicateCopyWith<$Res> {
  factory _$CheckEmailDuplicateCopyWith(_CheckEmailDuplicate value,
          $Res Function(_CheckEmailDuplicate) _then) =
      __$CheckEmailDuplicateCopyWithImpl;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$CheckEmailDuplicateCopyWithImpl<$Res>
    implements _$CheckEmailDuplicateCopyWith<$Res> {
  __$CheckEmailDuplicateCopyWithImpl(this._self, this._then);

  final _CheckEmailDuplicate _self;
  final $Res Function(_CheckEmailDuplicate) _then;

  /// Create a copy of CheckEmailDuplicate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(_CheckEmailDuplicate(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
