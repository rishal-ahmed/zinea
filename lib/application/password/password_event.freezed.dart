// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PasswordEvent {
  String get oldPassword => throw _privateConstructorUsedError;
  String get newpassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newpassword)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword, String newpassword)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newpassword)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordEventChange value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordEventChange value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordEventChange value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PasswordEventCopyWith<PasswordEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordEventCopyWith<$Res> {
  factory $PasswordEventCopyWith(
          PasswordEvent value, $Res Function(PasswordEvent) then) =
      _$PasswordEventCopyWithImpl<$Res, PasswordEvent>;
  @useResult
  $Res call({String oldPassword, String newpassword});
}

/// @nodoc
class _$PasswordEventCopyWithImpl<$Res, $Val extends PasswordEvent>
    implements $PasswordEventCopyWith<$Res> {
  _$PasswordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newpassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newpassword: null == newpassword
          ? _value.newpassword
          : newpassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PasswordEventChangeCopyWith<$Res>
    implements $PasswordEventCopyWith<$Res> {
  factory _$$_PasswordEventChangeCopyWith(_$_PasswordEventChange value,
          $Res Function(_$_PasswordEventChange) then) =
      __$$_PasswordEventChangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String oldPassword, String newpassword});
}

/// @nodoc
class __$$_PasswordEventChangeCopyWithImpl<$Res>
    extends _$PasswordEventCopyWithImpl<$Res, _$_PasswordEventChange>
    implements _$$_PasswordEventChangeCopyWith<$Res> {
  __$$_PasswordEventChangeCopyWithImpl(_$_PasswordEventChange _value,
      $Res Function(_$_PasswordEventChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newpassword = null,
  }) {
    return _then(_$_PasswordEventChange(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newpassword: null == newpassword
          ? _value.newpassword
          : newpassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordEventChange implements _PasswordEventChange {
  const _$_PasswordEventChange(
      {required this.oldPassword, required this.newpassword});

  @override
  final String oldPassword;
  @override
  final String newpassword;

  @override
  String toString() {
    return 'PasswordEvent.changePassword(oldPassword: $oldPassword, newpassword: $newpassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordEventChange &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newpassword, newpassword) ||
                other.newpassword == newpassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newpassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordEventChangeCopyWith<_$_PasswordEventChange> get copyWith =>
      __$$_PasswordEventChangeCopyWithImpl<_$_PasswordEventChange>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String oldPassword, String newpassword)
        changePassword,
  }) {
    return changePassword(oldPassword, newpassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String oldPassword, String newpassword)? changePassword,
  }) {
    return changePassword?.call(oldPassword, newpassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String oldPassword, String newpassword)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(oldPassword, newpassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PasswordEventChange value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PasswordEventChange value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PasswordEventChange value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }
}

abstract class _PasswordEventChange implements PasswordEvent {
  const factory _PasswordEventChange(
      {required final String oldPassword,
      required final String newpassword}) = _$_PasswordEventChange;

  @override
  String get oldPassword;
  @override
  String get newpassword;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordEventChangeCopyWith<_$_PasswordEventChange> get copyWith =>
      throw _privateConstructorUsedError;
}
