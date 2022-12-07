// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'config_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfigEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? config,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfigEvent value) config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfigEvent value)? config,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfigEvent value)? config,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigEventCopyWith<$Res> {
  factory $ConfigEventCopyWith(
          ConfigEvent value, $Res Function(ConfigEvent) then) =
      _$ConfigEventCopyWithImpl<$Res, ConfigEvent>;
}

/// @nodoc
class _$ConfigEventCopyWithImpl<$Res, $Val extends ConfigEvent>
    implements $ConfigEventCopyWith<$Res> {
  _$ConfigEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ConfigEventCopyWith<$Res> {
  factory _$$_ConfigEventCopyWith(
          _$_ConfigEvent value, $Res Function(_$_ConfigEvent) then) =
      __$$_ConfigEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ConfigEventCopyWithImpl<$Res>
    extends _$ConfigEventCopyWithImpl<$Res, _$_ConfigEvent>
    implements _$$_ConfigEventCopyWith<$Res> {
  __$$_ConfigEventCopyWithImpl(
      _$_ConfigEvent _value, $Res Function(_$_ConfigEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ConfigEvent implements _ConfigEvent {
  const _$_ConfigEvent();

  @override
  String toString() {
    return 'ConfigEvent.config()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ConfigEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() config,
  }) {
    return config();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? config,
  }) {
    return config?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? config,
    required TResult orElse(),
  }) {
    if (config != null) {
      return config();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConfigEvent value) config,
  }) {
    return config(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConfigEvent value)? config,
  }) {
    return config?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConfigEvent value)? config,
    required TResult orElse(),
  }) {
    if (config != null) {
      return config(this);
    }
    return orElse();
  }
}

abstract class _ConfigEvent implements ConfigEvent {
  const factory _ConfigEvent() = _$_ConfigEvent;
}
