// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionState {
  NetworkStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionStateCopyWith<ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionStateCopyWith<$Res> {
  factory $ConnectionStateCopyWith(
          ConnectionState value, $Res Function(ConnectionState) then) =
      _$ConnectionStateCopyWithImpl<$Res, ConnectionState>;
  @useResult
  $Res call({NetworkStatus status});
}

/// @nodoc
class _$ConnectionStateCopyWithImpl<$Res, $Val extends ConnectionState>
    implements $ConnectionStateCopyWith<$Res> {
  _$ConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectionStateCopyWith<$Res>
    implements $ConnectionStateCopyWith<$Res> {
  factory _$$_ConnectionStateCopyWith(
          _$_ConnectionState value, $Res Function(_$_ConnectionState) then) =
      __$$_ConnectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NetworkStatus status});
}

/// @nodoc
class __$$_ConnectionStateCopyWithImpl<$Res>
    extends _$ConnectionStateCopyWithImpl<$Res, _$_ConnectionState>
    implements _$$_ConnectionStateCopyWith<$Res> {
  __$$_ConnectionStateCopyWithImpl(
      _$_ConnectionState _value, $Res Function(_$_ConnectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_ConnectionState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as NetworkStatus,
    ));
  }
}

/// @nodoc

class _$_ConnectionState implements _ConnectionState {
  const _$_ConnectionState({this.status = NetworkStatus.initial});

  @override
  @JsonKey()
  final NetworkStatus status;

  @override
  String toString() {
    return 'ConnectionState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionState &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionStateCopyWith<_$_ConnectionState> get copyWith =>
      __$$_ConnectionStateCopyWithImpl<_$_ConnectionState>(this, _$identity);
}

abstract class _ConnectionState implements ConnectionState {
  const factory _ConnectionState({final NetworkStatus status}) =
      _$_ConnectionState;

  @override
  NetworkStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionStateCopyWith<_$_ConnectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
