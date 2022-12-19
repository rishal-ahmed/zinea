// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfoState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  VideoModel? get info => throw _privateConstructorUsedError;
  String get subscriptionStatus => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoStateCopyWith<InfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoStateCopyWith<$Res> {
  factory $InfoStateCopyWith(InfoState value, $Res Function(InfoState) then) =
      _$InfoStateCopyWithImpl<$Res, InfoState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      VideoModel? info,
      String subscriptionStatus,
      bool status,
      String message,
      double rating});

  $VideoModelCopyWith<$Res>? get info;
}

/// @nodoc
class _$InfoStateCopyWithImpl<$Res, $Val extends InfoState>
    implements $InfoStateCopyWith<$Res> {
  _$InfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? info = freezed,
    Object? subscriptionStatus = null,
    Object? status = null,
    Object? message = null,
    Object? rating = null,
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
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as VideoModel?,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoModelCopyWith<$Res>? get info {
    if (_value.info == null) {
      return null;
    }

    return $VideoModelCopyWith<$Res>(_value.info!, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_InfoStateCopyWith<$Res> implements $InfoStateCopyWith<$Res> {
  factory _$$_InfoStateCopyWith(
          _$_InfoState value, $Res Function(_$_InfoState) then) =
      __$$_InfoStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      VideoModel? info,
      String subscriptionStatus,
      bool status,
      String message,
      double rating});

  @override
  $VideoModelCopyWith<$Res>? get info;
}

/// @nodoc
class __$$_InfoStateCopyWithImpl<$Res>
    extends _$InfoStateCopyWithImpl<$Res, _$_InfoState>
    implements _$$_InfoStateCopyWith<$Res> {
  __$$_InfoStateCopyWithImpl(
      _$_InfoState _value, $Res Function(_$_InfoState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? info = freezed,
    Object? subscriptionStatus = null,
    Object? status = null,
    Object? message = null,
    Object? rating = null,
  }) {
    return _then(_$_InfoState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as VideoModel?,
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_InfoState implements _InfoState {
  const _$_InfoState(
      {this.isLoading = false,
      this.isError = false,
      this.info = null,
      this.subscriptionStatus = '',
      this.status = false,
      this.message = '',
      this.rating = 0.0});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  @override
  @JsonKey()
  final VideoModel? info;
  @override
  @JsonKey()
  final String subscriptionStatus;
  @override
  @JsonKey()
  final bool status;
  @override
  @JsonKey()
  final String message;
  @override
  @JsonKey()
  final double rating;

  @override
  String toString() {
    return 'InfoState(isLoading: $isLoading, isError: $isError, info: $info, subscriptionStatus: $subscriptionStatus, status: $status, message: $message, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.subscriptionStatus, subscriptionStatus) ||
                other.subscriptionStatus == subscriptionStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError, info,
      subscriptionStatus, status, message, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoStateCopyWith<_$_InfoState> get copyWith =>
      __$$_InfoStateCopyWithImpl<_$_InfoState>(this, _$identity);
}

abstract class _InfoState implements InfoState {
  const factory _InfoState(
      {final bool isLoading,
      final bool isError,
      final VideoModel? info,
      final String subscriptionStatus,
      final bool status,
      final String message,
      final double rating}) = _$_InfoState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  VideoModel? get info;
  @override
  String get subscriptionStatus;
  @override
  bool get status;
  @override
  String get message;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_InfoStateCopyWith<_$_InfoState> get copyWith =>
      throw _privateConstructorUsedError;
}
