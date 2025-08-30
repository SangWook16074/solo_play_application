// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_agreement_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAgreementState {
  UserAgreement get agreement;

  /// Create a copy of UserAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAgreementStateCopyWith<UserAgreementState> get copyWith =>
      _$UserAgreementStateCopyWithImpl<UserAgreementState>(
          this as UserAgreementState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAgreementState &&
            (identical(other.agreement, agreement) ||
                other.agreement == agreement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agreement);

  @override
  String toString() {
    return 'UserAgreementState(agreement: $agreement)';
  }
}

/// @nodoc
abstract mixin class $UserAgreementStateCopyWith<$Res> {
  factory $UserAgreementStateCopyWith(
          UserAgreementState value, $Res Function(UserAgreementState) _then) =
      _$UserAgreementStateCopyWithImpl;
  @useResult
  $Res call({UserAgreement agreement});

  $UserAgreementCopyWith<$Res> get agreement;
}

/// @nodoc
class _$UserAgreementStateCopyWithImpl<$Res>
    implements $UserAgreementStateCopyWith<$Res> {
  _$UserAgreementStateCopyWithImpl(this._self, this._then);

  final UserAgreementState _self;
  final $Res Function(UserAgreementState) _then;

  /// Create a copy of UserAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? agreement = null,
  }) {
    return _then(_self.copyWith(
      agreement: null == agreement
          ? _self.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as UserAgreement,
    ));
  }

  /// Create a copy of UserAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAgreementCopyWith<$Res> get agreement {
    return $UserAgreementCopyWith<$Res>(_self.agreement, (value) {
      return _then(_self.copyWith(agreement: value));
    });
  }
}

/// @nodoc

class _UserAgreement implements UserAgreementState {
  const _UserAgreement({this.agreement = const UserAgreement()});

  @override
  @JsonKey()
  final UserAgreement agreement;

  /// Create a copy of UserAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$UserAgreementCopyWith<_UserAgreement> get copyWith =>
      __$UserAgreementCopyWithImpl<_UserAgreement>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserAgreement &&
            (identical(other.agreement, agreement) ||
                other.agreement == agreement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, agreement);

  @override
  String toString() {
    return 'UserAgreementState(agreement: $agreement)';
  }
}

/// @nodoc
abstract mixin class _$UserAgreementCopyWith<$Res>
    implements $UserAgreementStateCopyWith<$Res> {
  factory _$UserAgreementCopyWith(
          _UserAgreement value, $Res Function(_UserAgreement) _then) =
      __$UserAgreementCopyWithImpl;
  @override
  @useResult
  $Res call({UserAgreement agreement});

  @override
  $UserAgreementCopyWith<$Res> get agreement;
}

/// @nodoc
class __$UserAgreementCopyWithImpl<$Res>
    implements _$UserAgreementCopyWith<$Res> {
  __$UserAgreementCopyWithImpl(this._self, this._then);

  final _UserAgreement _self;
  final $Res Function(_UserAgreement) _then;

  /// Create a copy of UserAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? agreement = null,
  }) {
    return _then(_UserAgreement(
      agreement: null == agreement
          ? _self.agreement
          : agreement // ignore: cast_nullable_to_non_nullable
              as UserAgreement,
    ));
  }

  /// Create a copy of UserAgreementState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserAgreementCopyWith<$Res> get agreement {
    return $UserAgreementCopyWith<$Res>(_self.agreement, (value) {
      return _then(_self.copyWith(agreement: value));
    });
  }
}

// dart format on
