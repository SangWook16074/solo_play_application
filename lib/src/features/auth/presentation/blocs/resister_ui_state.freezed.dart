// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resister_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResisterUiState implements DiagnosticableTreeMixin {
  String get email;
  String get password;
  bool get isOver14;
  bool get isAgreedToTerms;
  bool get isAgreedToMarketing;
  bool get isConsentedToAds;

  /// Create a copy of ResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ResisterUiStateCopyWith<ResisterUiState> get copyWith =>
      _$ResisterUiStateCopyWithImpl<ResisterUiState>(
          this as ResisterUiState, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ResisterUiState'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isOver14', isOver14))
      ..add(DiagnosticsProperty('isAgreedToTerms', isAgreedToTerms))
      ..add(DiagnosticsProperty('isAgreedToMarketing', isAgreedToMarketing))
      ..add(DiagnosticsProperty('isConsentedToAds', isConsentedToAds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ResisterUiState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isOver14, isOver14) ||
                other.isOver14 == isOver14) &&
            (identical(other.isAgreedToTerms, isAgreedToTerms) ||
                other.isAgreedToTerms == isAgreedToTerms) &&
            (identical(other.isAgreedToMarketing, isAgreedToMarketing) ||
                other.isAgreedToMarketing == isAgreedToMarketing) &&
            (identical(other.isConsentedToAds, isConsentedToAds) ||
                other.isConsentedToAds == isConsentedToAds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isOver14,
      isAgreedToTerms, isAgreedToMarketing, isConsentedToAds);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiState(email: $email, password: $password, isOver14: $isOver14, isAgreedToTerms: $isAgreedToTerms, isAgreedToMarketing: $isAgreedToMarketing, isConsentedToAds: $isConsentedToAds)';
  }
}

/// @nodoc
abstract mixin class $ResisterUiStateCopyWith<$Res> {
  factory $ResisterUiStateCopyWith(
          ResisterUiState value, $Res Function(ResisterUiState) _then) =
      _$ResisterUiStateCopyWithImpl;
  @useResult
  $Res call(
      {String email,
      String password,
      bool isOver14,
      bool isAgreedToTerms,
      bool isAgreedToMarketing,
      bool isConsentedToAds});
}

/// @nodoc
class _$ResisterUiStateCopyWithImpl<$Res>
    implements $ResisterUiStateCopyWith<$Res> {
  _$ResisterUiStateCopyWithImpl(this._self, this._then);

  final ResisterUiState _self;
  final $Res Function(ResisterUiState) _then;

  /// Create a copy of ResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isOver14 = null,
    Object? isAgreedToTerms = null,
    Object? isAgreedToMarketing = null,
    Object? isConsentedToAds = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isOver14: null == isOver14
          ? _self.isOver14
          : isOver14 // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToTerms: null == isAgreedToTerms
          ? _self.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToMarketing: null == isAgreedToMarketing
          ? _self.isAgreedToMarketing
          : isAgreedToMarketing // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentedToAds: null == isConsentedToAds
          ? _self.isConsentedToAds
          : isConsentedToAds // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _ResisterUiState with DiagnosticableTreeMixin implements ResisterUiState {
  const _ResisterUiState(
      {this.email = "",
      this.password = "",
      this.isOver14 = false,
      this.isAgreedToTerms = false,
      this.isAgreedToMarketing = false,
      this.isConsentedToAds = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final bool isOver14;
  @override
  @JsonKey()
  final bool isAgreedToTerms;
  @override
  @JsonKey()
  final bool isAgreedToMarketing;
  @override
  @JsonKey()
  final bool isConsentedToAds;

  /// Create a copy of ResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ResisterUiStateCopyWith<_ResisterUiState> get copyWith =>
      __$ResisterUiStateCopyWithImpl<_ResisterUiState>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ResisterUiState'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('isOver14', isOver14))
      ..add(DiagnosticsProperty('isAgreedToTerms', isAgreedToTerms))
      ..add(DiagnosticsProperty('isAgreedToMarketing', isAgreedToMarketing))
      ..add(DiagnosticsProperty('isConsentedToAds', isConsentedToAds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResisterUiState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isOver14, isOver14) ||
                other.isOver14 == isOver14) &&
            (identical(other.isAgreedToTerms, isAgreedToTerms) ||
                other.isAgreedToTerms == isAgreedToTerms) &&
            (identical(other.isAgreedToMarketing, isAgreedToMarketing) ||
                other.isAgreedToMarketing == isAgreedToMarketing) &&
            (identical(other.isConsentedToAds, isConsentedToAds) ||
                other.isConsentedToAds == isConsentedToAds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, isOver14,
      isAgreedToTerms, isAgreedToMarketing, isConsentedToAds);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiState(email: $email, password: $password, isOver14: $isOver14, isAgreedToTerms: $isAgreedToTerms, isAgreedToMarketing: $isAgreedToMarketing, isConsentedToAds: $isConsentedToAds)';
  }
}

/// @nodoc
abstract mixin class _$ResisterUiStateCopyWith<$Res>
    implements $ResisterUiStateCopyWith<$Res> {
  factory _$ResisterUiStateCopyWith(
          _ResisterUiState value, $Res Function(_ResisterUiState) _then) =
      __$ResisterUiStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String email,
      String password,
      bool isOver14,
      bool isAgreedToTerms,
      bool isAgreedToMarketing,
      bool isConsentedToAds});
}

/// @nodoc
class __$ResisterUiStateCopyWithImpl<$Res>
    implements _$ResisterUiStateCopyWith<$Res> {
  __$ResisterUiStateCopyWithImpl(this._self, this._then);

  final _ResisterUiState _self;
  final $Res Function(_ResisterUiState) _then;

  /// Create a copy of ResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? isOver14 = null,
    Object? isAgreedToTerms = null,
    Object? isAgreedToMarketing = null,
    Object? isConsentedToAds = null,
  }) {
    return _then(_ResisterUiState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isOver14: null == isOver14
          ? _self.isOver14
          : isOver14 // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToTerms: null == isAgreedToTerms
          ? _self.isAgreedToTerms
          : isAgreedToTerms // ignore: cast_nullable_to_non_nullable
              as bool,
      isAgreedToMarketing: null == isAgreedToMarketing
          ? _self.isAgreedToMarketing
          : isAgreedToMarketing // ignore: cast_nullable_to_non_nullable
              as bool,
      isConsentedToAds: null == isConsentedToAds
          ? _self.isConsentedToAds
          : isConsentedToAds // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
