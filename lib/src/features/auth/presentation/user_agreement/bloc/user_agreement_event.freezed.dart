// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_agreement_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserAgreementEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserAgreementEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserAgreementEvent()';
  }
}

/// @nodoc
class $UserAgreementEventCopyWith<$Res> {
  $UserAgreementEventCopyWith(
      UserAgreementEvent _, $Res Function(UserAgreementEvent) __);
}

/// @nodoc

class UserAgreementIsOver14Toggled implements UserAgreementEvent {
  const UserAgreementIsOver14Toggled({required this.isAgree});

  final bool isAgree;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAgreementIsOver14ToggledCopyWith<UserAgreementIsOver14Toggled>
      get copyWith => _$UserAgreementIsOver14ToggledCopyWithImpl<
          UserAgreementIsOver14Toggled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAgreementIsOver14Toggled &&
            (identical(other.isAgree, isAgree) || other.isAgree == isAgree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgree);

  @override
  String toString() {
    return 'UserAgreementEvent.isOver14Toggled(isAgree: $isAgree)';
  }
}

/// @nodoc
abstract mixin class $UserAgreementIsOver14ToggledCopyWith<$Res>
    implements $UserAgreementEventCopyWith<$Res> {
  factory $UserAgreementIsOver14ToggledCopyWith(
          UserAgreementIsOver14Toggled value,
          $Res Function(UserAgreementIsOver14Toggled) _then) =
      _$UserAgreementIsOver14ToggledCopyWithImpl;
  @useResult
  $Res call({bool isAgree});
}

/// @nodoc
class _$UserAgreementIsOver14ToggledCopyWithImpl<$Res>
    implements $UserAgreementIsOver14ToggledCopyWith<$Res> {
  _$UserAgreementIsOver14ToggledCopyWithImpl(this._self, this._then);

  final UserAgreementIsOver14Toggled _self;
  final $Res Function(UserAgreementIsOver14Toggled) _then;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAgree = null,
  }) {
    return _then(UserAgreementIsOver14Toggled(
      isAgree: null == isAgree
          ? _self.isAgree
          : isAgree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class UserAgreementIsAgreedToTermsTogged implements UserAgreementEvent {
  const UserAgreementIsAgreedToTermsTogged({required this.isAgree});

  final bool isAgree;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAgreementIsAgreedToTermsToggedCopyWith<
          UserAgreementIsAgreedToTermsTogged>
      get copyWith => _$UserAgreementIsAgreedToTermsToggedCopyWithImpl<
          UserAgreementIsAgreedToTermsTogged>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAgreementIsAgreedToTermsTogged &&
            (identical(other.isAgree, isAgree) || other.isAgree == isAgree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgree);

  @override
  String toString() {
    return 'UserAgreementEvent.isAgreedToTermsToggled(isAgree: $isAgree)';
  }
}

/// @nodoc
abstract mixin class $UserAgreementIsAgreedToTermsToggedCopyWith<$Res>
    implements $UserAgreementEventCopyWith<$Res> {
  factory $UserAgreementIsAgreedToTermsToggedCopyWith(
          UserAgreementIsAgreedToTermsTogged value,
          $Res Function(UserAgreementIsAgreedToTermsTogged) _then) =
      _$UserAgreementIsAgreedToTermsToggedCopyWithImpl;
  @useResult
  $Res call({bool isAgree});
}

/// @nodoc
class _$UserAgreementIsAgreedToTermsToggedCopyWithImpl<$Res>
    implements $UserAgreementIsAgreedToTermsToggedCopyWith<$Res> {
  _$UserAgreementIsAgreedToTermsToggedCopyWithImpl(this._self, this._then);

  final UserAgreementIsAgreedToTermsTogged _self;
  final $Res Function(UserAgreementIsAgreedToTermsTogged) _then;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAgree = null,
  }) {
    return _then(UserAgreementIsAgreedToTermsTogged(
      isAgree: null == isAgree
          ? _self.isAgree
          : isAgree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class UserAgreementIsAgreedToMarketingToggled implements UserAgreementEvent {
  const UserAgreementIsAgreedToMarketingToggled({required this.isAgree});

  final bool isAgree;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAgreementIsAgreedToMarketingToggledCopyWith<
          UserAgreementIsAgreedToMarketingToggled>
      get copyWith => _$UserAgreementIsAgreedToMarketingToggledCopyWithImpl<
          UserAgreementIsAgreedToMarketingToggled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAgreementIsAgreedToMarketingToggled &&
            (identical(other.isAgree, isAgree) || other.isAgree == isAgree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgree);

  @override
  String toString() {
    return 'UserAgreementEvent.isAgreedToMarketingToggled(isAgree: $isAgree)';
  }
}

/// @nodoc
abstract mixin class $UserAgreementIsAgreedToMarketingToggledCopyWith<$Res>
    implements $UserAgreementEventCopyWith<$Res> {
  factory $UserAgreementIsAgreedToMarketingToggledCopyWith(
          UserAgreementIsAgreedToMarketingToggled value,
          $Res Function(UserAgreementIsAgreedToMarketingToggled) _then) =
      _$UserAgreementIsAgreedToMarketingToggledCopyWithImpl;
  @useResult
  $Res call({bool isAgree});
}

/// @nodoc
class _$UserAgreementIsAgreedToMarketingToggledCopyWithImpl<$Res>
    implements $UserAgreementIsAgreedToMarketingToggledCopyWith<$Res> {
  _$UserAgreementIsAgreedToMarketingToggledCopyWithImpl(this._self, this._then);

  final UserAgreementIsAgreedToMarketingToggled _self;
  final $Res Function(UserAgreementIsAgreedToMarketingToggled) _then;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAgree = null,
  }) {
    return _then(UserAgreementIsAgreedToMarketingToggled(
      isAgree: null == isAgree
          ? _self.isAgree
          : isAgree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class UserAgreementIsConsentedToAdsToggled implements UserAgreementEvent {
  const UserAgreementIsConsentedToAdsToggled({required this.isAgree});

  final bool isAgree;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserAgreementIsConsentedToAdsToggledCopyWith<
          UserAgreementIsConsentedToAdsToggled>
      get copyWith => _$UserAgreementIsConsentedToAdsToggledCopyWithImpl<
          UserAgreementIsConsentedToAdsToggled>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserAgreementIsConsentedToAdsToggled &&
            (identical(other.isAgree, isAgree) || other.isAgree == isAgree));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgree);

  @override
  String toString() {
    return 'UserAgreementEvent.isConsentedToAdsToggled(isAgree: $isAgree)';
  }
}

/// @nodoc
abstract mixin class $UserAgreementIsConsentedToAdsToggledCopyWith<$Res>
    implements $UserAgreementEventCopyWith<$Res> {
  factory $UserAgreementIsConsentedToAdsToggledCopyWith(
          UserAgreementIsConsentedToAdsToggled value,
          $Res Function(UserAgreementIsConsentedToAdsToggled) _then) =
      _$UserAgreementIsConsentedToAdsToggledCopyWithImpl;
  @useResult
  $Res call({bool isAgree});
}

/// @nodoc
class _$UserAgreementIsConsentedToAdsToggledCopyWithImpl<$Res>
    implements $UserAgreementIsConsentedToAdsToggledCopyWith<$Res> {
  _$UserAgreementIsConsentedToAdsToggledCopyWithImpl(this._self, this._then);

  final UserAgreementIsConsentedToAdsToggled _self;
  final $Res Function(UserAgreementIsConsentedToAdsToggled) _then;

  /// Create a copy of UserAgreementEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isAgree = null,
  }) {
    return _then(UserAgreementIsConsentedToAdsToggled(
      isAgree: null == isAgree
          ? _self.isAgree
          : isAgree // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class UserAgreementAllAgree implements UserAgreementEvent {
  const UserAgreementAllAgree();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserAgreementAllAgree);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserAgreementEvent.allAgree()';
  }
}

/// @nodoc

class UserAgreementAllDisagree implements UserAgreementEvent {
  const UserAgreementAllDisagree();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserAgreementAllDisagree);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserAgreementEvent.allDisagree()';
  }
}

// dart format on
