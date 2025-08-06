// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resister_ui_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ResisterUiEvent implements DiagnosticableTreeMixin {
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ResisterUiEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ResisterUiEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent()';
  }
}

/// @nodoc
class $ResisterUiEventCopyWith<$Res> {
  $ResisterUiEventCopyWith(
      ResisterUiEvent _, $Res Function(ResisterUiEvent) __);
}

/// @nodoc

class _EmailResisterUiEvent
    with DiagnosticableTreeMixin
    implements ResisterUiEvent {
  const _EmailResisterUiEvent();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties..add(DiagnosticsProperty('type', 'ResisterUiEvent._'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _EmailResisterUiEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent._()';
  }
}

/// @nodoc

class UserTermsChanged with DiagnosticableTreeMixin implements ResisterUiEvent {
  const UserTermsChanged(
      {required this.isOver14,
      required this.isAgreedToTerms,
      required this.isAgreedToMarketing,
      required this.isConsentedToAds});

  final bool isOver14;
  final bool isAgreedToTerms;
  final bool isAgreedToMarketing;
  final bool isConsentedToAds;

  /// Create a copy of ResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserTermsChangedCopyWith<UserTermsChanged> get copyWith =>
      _$UserTermsChangedCopyWithImpl<UserTermsChanged>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ResisterUiEvent.userTermsChanged'))
      ..add(DiagnosticsProperty('isOver14', isOver14))
      ..add(DiagnosticsProperty('isAgreedToTerms', isAgreedToTerms))
      ..add(DiagnosticsProperty('isAgreedToMarketing', isAgreedToMarketing))
      ..add(DiagnosticsProperty('isConsentedToAds', isConsentedToAds));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserTermsChanged &&
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
  int get hashCode => Object.hash(runtimeType, isOver14, isAgreedToTerms,
      isAgreedToMarketing, isConsentedToAds);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent.userTermsChanged(isOver14: $isOver14, isAgreedToTerms: $isAgreedToTerms, isAgreedToMarketing: $isAgreedToMarketing, isConsentedToAds: $isConsentedToAds)';
  }
}

/// @nodoc
abstract mixin class $UserTermsChangedCopyWith<$Res>
    implements $ResisterUiEventCopyWith<$Res> {
  factory $UserTermsChangedCopyWith(
          UserTermsChanged value, $Res Function(UserTermsChanged) _then) =
      _$UserTermsChangedCopyWithImpl;
  @useResult
  $Res call(
      {bool isOver14,
      bool isAgreedToTerms,
      bool isAgreedToMarketing,
      bool isConsentedToAds});
}

/// @nodoc
class _$UserTermsChangedCopyWithImpl<$Res>
    implements $UserTermsChangedCopyWith<$Res> {
  _$UserTermsChangedCopyWithImpl(this._self, this._then);

  final UserTermsChanged _self;
  final $Res Function(UserTermsChanged) _then;

  /// Create a copy of ResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? isOver14 = null,
    Object? isAgreedToTerms = null,
    Object? isAgreedToMarketing = null,
    Object? isConsentedToAds = null,
  }) {
    return _then(UserTermsChanged(
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

class UserEmailChanged with DiagnosticableTreeMixin implements ResisterUiEvent {
  const UserEmailChanged({required this.email});

  final String email;

  /// Create a copy of ResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserEmailChangedCopyWith<UserEmailChanged> get copyWith =>
      _$UserEmailChangedCopyWithImpl<UserEmailChanged>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ResisterUiEvent.userEmailChanged'))
      ..add(DiagnosticsProperty('email', email));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserEmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent.userEmailChanged(email: $email)';
  }
}

/// @nodoc
abstract mixin class $UserEmailChangedCopyWith<$Res>
    implements $ResisterUiEventCopyWith<$Res> {
  factory $UserEmailChangedCopyWith(
          UserEmailChanged value, $Res Function(UserEmailChanged) _then) =
      _$UserEmailChangedCopyWithImpl;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$UserEmailChangedCopyWithImpl<$Res>
    implements $UserEmailChangedCopyWith<$Res> {
  _$UserEmailChangedCopyWithImpl(this._self, this._then);

  final UserEmailChanged _self;
  final $Res Function(UserEmailChanged) _then;

  /// Create a copy of ResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
  }) {
    return _then(UserEmailChanged(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserPasswordChanged
    with DiagnosticableTreeMixin
    implements ResisterUiEvent {
  const UserPasswordChanged({required this.password});

  final String password;

  /// Create a copy of ResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserPasswordChangedCopyWith<UserPasswordChanged> get copyWith =>
      _$UserPasswordChangedCopyWithImpl<UserPasswordChanged>(this, _$identity);

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'ResisterUiEvent.userPasswordChanged'))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserPasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent.userPasswordChanged(password: $password)';
  }
}

/// @nodoc
abstract mixin class $UserPasswordChangedCopyWith<$Res>
    implements $ResisterUiEventCopyWith<$Res> {
  factory $UserPasswordChangedCopyWith(
          UserPasswordChanged value, $Res Function(UserPasswordChanged) _then) =
      _$UserPasswordChangedCopyWithImpl;
  @useResult
  $Res call({String password});
}

/// @nodoc
class _$UserPasswordChangedCopyWithImpl<$Res>
    implements $UserPasswordChangedCopyWith<$Res> {
  _$UserPasswordChangedCopyWithImpl(this._self, this._then);

  final UserPasswordChanged _self;
  final $Res Function(UserPasswordChanged) _then;

  /// Create a copy of ResisterUiEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? password = null,
  }) {
    return _then(UserPasswordChanged(
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class UserMoveToEmailResisterUI
    with DiagnosticableTreeMixin
    implements ResisterUiEvent {
  const UserMoveToEmailResisterUI();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'ResisterUiEvent.userMoveToEmailResisterUi'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserMoveToEmailResisterUI);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent.userMoveToEmailResisterUi()';
  }
}

/// @nodoc

class UserMoveToPasswordResisterUI
    with DiagnosticableTreeMixin
    implements ResisterUiEvent {
  const UserMoveToPasswordResisterUI();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'ResisterUiEvent.userMoveToPasswordResisterUi'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserMoveToPasswordResisterUI);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent.userMoveToPasswordResisterUi()';
  }
}

/// @nodoc

class UserMoveToVerificationUI
    with DiagnosticableTreeMixin
    implements ResisterUiEvent {
  const UserMoveToVerificationUI();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty(
          'type', 'ResisterUiEvent.userMoveToVerificationUi'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserMoveToVerificationUI);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ResisterUiEvent.userMoveToVerificationUi()';
  }
}

// dart format on
