// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'email_resister_ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EmailResisterUiState {
  String get email;
  bool get isAvail;
  String get errorMsg;

  /// Create a copy of EmailResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EmailResisterUiStateCopyWith<EmailResisterUiState> get copyWith =>
      _$EmailResisterUiStateCopyWithImpl<EmailResisterUiState>(
          this as EmailResisterUiState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmailResisterUiState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isAvail, isAvail) || other.isAvail == isAvail) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isAvail, errorMsg);

  @override
  String toString() {
    return 'EmailResisterUiState(email: $email, isAvail: $isAvail, errorMsg: $errorMsg)';
  }
}

/// @nodoc
abstract mixin class $EmailResisterUiStateCopyWith<$Res> {
  factory $EmailResisterUiStateCopyWith(EmailResisterUiState value,
          $Res Function(EmailResisterUiState) _then) =
      _$EmailResisterUiStateCopyWithImpl;
  @useResult
  $Res call({String email, bool isAvail, String errorMsg});
}

/// @nodoc
class _$EmailResisterUiStateCopyWithImpl<$Res>
    implements $EmailResisterUiStateCopyWith<$Res> {
  _$EmailResisterUiStateCopyWithImpl(this._self, this._then);

  final EmailResisterUiState _self;
  final $Res Function(EmailResisterUiState) _then;

  /// Create a copy of EmailResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? isAvail = null,
    Object? errorMsg = null,
  }) {
    return _then(_self.copyWith(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isAvail: null == isAvail
          ? _self.isAvail
          : isAvail // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _self.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _EmailResisterUiState extends EmailResisterUiState {
  const _EmailResisterUiState(
      {this.email = "", this.isAvail = false, this.errorMsg = ""})
      : super._();

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final bool isAvail;
  @override
  @JsonKey()
  final String errorMsg;

  /// Create a copy of EmailResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EmailResisterUiStateCopyWith<_EmailResisterUiState> get copyWith =>
      __$EmailResisterUiStateCopyWithImpl<_EmailResisterUiState>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EmailResisterUiState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.isAvail, isAvail) || other.isAvail == isAvail) &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, isAvail, errorMsg);

  @override
  String toString() {
    return 'EmailResisterUiState(email: $email, isAvail: $isAvail, errorMsg: $errorMsg)';
  }
}

/// @nodoc
abstract mixin class _$EmailResisterUiStateCopyWith<$Res>
    implements $EmailResisterUiStateCopyWith<$Res> {
  factory _$EmailResisterUiStateCopyWith(_EmailResisterUiState value,
          $Res Function(_EmailResisterUiState) _then) =
      __$EmailResisterUiStateCopyWithImpl;
  @override
  @useResult
  $Res call({String email, bool isAvail, String errorMsg});
}

/// @nodoc
class __$EmailResisterUiStateCopyWithImpl<$Res>
    implements _$EmailResisterUiStateCopyWith<$Res> {
  __$EmailResisterUiStateCopyWithImpl(this._self, this._then);

  final _EmailResisterUiState _self;
  final $Res Function(_EmailResisterUiState) _then;

  /// Create a copy of EmailResisterUiState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? email = null,
    Object? isAvail = null,
    Object? errorMsg = null,
  }) {
    return _then(_EmailResisterUiState(
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      isAvail: null == isAvail
          ? _self.isAvail
          : isAvail // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMsg: null == errorMsg
          ? _self.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
