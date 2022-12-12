// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordStateCopyWith<PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordStateCopyWith<$Res> {
  factory $PasswordStateCopyWith(
          PasswordState value, $Res Function(PasswordState) then) =
      _$PasswordStateCopyWithImpl<$Res, PasswordState>;
  @useResult
  $Res call({bool isLoading, bool isError, bool status, String message});
}

/// @nodoc
class _$PasswordStateCopyWithImpl<$Res, $Val extends PasswordState>
    implements $PasswordStateCopyWith<$Res> {
  _$PasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordStateCopyWith<$Res>
    implements $PasswordStateCopyWith<$Res> {
  factory _$$_PasswordStateCopyWith(
          _$_PasswordState value, $Res Function(_$_PasswordState) then) =
      __$$_PasswordStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, bool isError, bool status, String message});
}

/// @nodoc
class __$$_PasswordStateCopyWithImpl<$Res>
    extends _$PasswordStateCopyWithImpl<$Res, _$_PasswordState>
    implements _$$_PasswordStateCopyWith<$Res> {
  __$$_PasswordStateCopyWithImpl(
      _$_PasswordState _value, $Res Function(_$_PasswordState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$_PasswordState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordState implements _PasswordState {
  const _$_PasswordState(
      {this.isLoading = false,
      this.isError = false,
      this.status = false,
      this.message = ''});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'PasswordState(isLoading: $isLoading, isError: $isError, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, isError, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordStateCopyWith<_$_PasswordState> get copyWith =>
      __$$_PasswordStateCopyWithImpl<_$_PasswordState>(this, _$identity);
}

abstract class _PasswordState implements PasswordState {
  const factory _PasswordState(
      {final bool isLoading,
      final bool isError,
      final bool status,
      final String message}) = _$_PasswordState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordStateCopyWith<_$_PasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
