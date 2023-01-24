// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscriptionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptions,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, int mode) checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptions,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, int mode)? checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptions,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, int mode)? checkPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscriptions,
    required TResult Function(_SubscriptionEventVideo value) videoSubscription,
    required TResult Function(_SubscriptionEventPayment value)
        checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscriptions,
    TResult? Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult? Function(_SubscriptionEventPayment value)? checkPaymentStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscriptions,
    TResult Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult Function(_SubscriptionEventPayment value)? checkPaymentStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionEventCopyWith<$Res> {
  factory $SubscriptionEventCopyWith(
          SubscriptionEvent value, $Res Function(SubscriptionEvent) then) =
      _$SubscriptionEventCopyWithImpl<$Res, SubscriptionEvent>;
}

/// @nodoc
class _$SubscriptionEventCopyWithImpl<$Res, $Val extends SubscriptionEvent>
    implements $SubscriptionEventCopyWith<$Res> {
  _$SubscriptionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SubscriptionEventCopyWith<$Res> {
  factory _$$_SubscriptionEventCopyWith(_$_SubscriptionEvent value,
          $Res Function(_$_SubscriptionEvent) then) =
      __$$_SubscriptionEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubscriptionEventCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$_SubscriptionEvent>
    implements _$$_SubscriptionEventCopyWith<$Res> {
  __$$_SubscriptionEventCopyWithImpl(
      _$_SubscriptionEvent _value, $Res Function(_$_SubscriptionEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubscriptionEvent implements _SubscriptionEvent {
  const _$_SubscriptionEvent();

  @override
  String toString() {
    return 'SubscriptionEvent.subscriptions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubscriptionEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptions,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, int mode) checkPaymentStatus,
  }) {
    return subscriptions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptions,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, int mode)? checkPaymentStatus,
  }) {
    return subscriptions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptions,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, int mode)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (subscriptions != null) {
      return subscriptions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscriptions,
    required TResult Function(_SubscriptionEventVideo value) videoSubscription,
    required TResult Function(_SubscriptionEventPayment value)
        checkPaymentStatus,
  }) {
    return subscriptions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscriptions,
    TResult? Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult? Function(_SubscriptionEventPayment value)? checkPaymentStatus,
  }) {
    return subscriptions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscriptions,
    TResult Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult Function(_SubscriptionEventPayment value)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (subscriptions != null) {
      return subscriptions(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEvent implements SubscriptionEvent {
  const factory _SubscriptionEvent() = _$_SubscriptionEvent;
}

/// @nodoc
abstract class _$$_SubscriptionEventVideoCopyWith<$Res> {
  factory _$$_SubscriptionEventVideoCopyWith(_$_SubscriptionEventVideo value,
          $Res Function(_$_SubscriptionEventVideo) then) =
      __$$_SubscriptionEventVideoCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$_SubscriptionEventVideoCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$_SubscriptionEventVideo>
    implements _$$_SubscriptionEventVideoCopyWith<$Res> {
  __$$_SubscriptionEventVideoCopyWithImpl(_$_SubscriptionEventVideo _value,
      $Res Function(_$_SubscriptionEventVideo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$_SubscriptionEventVideo(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SubscriptionEventVideo implements _SubscriptionEventVideo {
  const _$_SubscriptionEventVideo({required this.videoId});

  @override
  final String videoId;

  @override
  String toString() {
    return 'SubscriptionEvent.videoSubscription(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionEventVideo &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionEventVideoCopyWith<_$_SubscriptionEventVideo> get copyWith =>
      __$$_SubscriptionEventVideoCopyWithImpl<_$_SubscriptionEventVideo>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptions,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, int mode) checkPaymentStatus,
  }) {
    return videoSubscription(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptions,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, int mode)? checkPaymentStatus,
  }) {
    return videoSubscription?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptions,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, int mode)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (videoSubscription != null) {
      return videoSubscription(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscriptions,
    required TResult Function(_SubscriptionEventVideo value) videoSubscription,
    required TResult Function(_SubscriptionEventPayment value)
        checkPaymentStatus,
  }) {
    return videoSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscriptions,
    TResult? Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult? Function(_SubscriptionEventPayment value)? checkPaymentStatus,
  }) {
    return videoSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscriptions,
    TResult Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult Function(_SubscriptionEventPayment value)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (videoSubscription != null) {
      return videoSubscription(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEventVideo implements SubscriptionEvent {
  const factory _SubscriptionEventVideo({required final String videoId}) =
      _$_SubscriptionEventVideo;

  String get videoId;
  @JsonKey(ignore: true)
  _$$_SubscriptionEventVideoCopyWith<_$_SubscriptionEventVideo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubscriptionEventPaymentCopyWith<$Res> {
  factory _$$_SubscriptionEventPaymentCopyWith(
          _$_SubscriptionEventPayment value,
          $Res Function(_$_SubscriptionEventPayment) then) =
      __$$_SubscriptionEventPaymentCopyWithImpl<$Res>;
  @useResult
  $Res call({String videoId, int mode});
}

/// @nodoc
class __$$_SubscriptionEventPaymentCopyWithImpl<$Res>
    extends _$SubscriptionEventCopyWithImpl<$Res, _$_SubscriptionEventPayment>
    implements _$$_SubscriptionEventPaymentCopyWith<$Res> {
  __$$_SubscriptionEventPaymentCopyWithImpl(_$_SubscriptionEventPayment _value,
      $Res Function(_$_SubscriptionEventPayment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? mode = null,
  }) {
    return _then(_$_SubscriptionEventPayment(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SubscriptionEventPayment implements _SubscriptionEventPayment {
  const _$_SubscriptionEventPayment(
      {required this.videoId, required this.mode});

  @override
  final String videoId;
  @override
  final int mode;

  @override
  String toString() {
    return 'SubscriptionEvent.checkPaymentStatus(videoId: $videoId, mode: $mode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionEventPayment &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, mode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionEventPaymentCopyWith<_$_SubscriptionEventPayment>
      get copyWith => __$$_SubscriptionEventPaymentCopyWithImpl<
          _$_SubscriptionEventPayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscriptions,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, int mode) checkPaymentStatus,
  }) {
    return checkPaymentStatus(videoId, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscriptions,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, int mode)? checkPaymentStatus,
  }) {
    return checkPaymentStatus?.call(videoId, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscriptions,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, int mode)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (checkPaymentStatus != null) {
      return checkPaymentStatus(videoId, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SubscriptionEvent value) subscriptions,
    required TResult Function(_SubscriptionEventVideo value) videoSubscription,
    required TResult Function(_SubscriptionEventPayment value)
        checkPaymentStatus,
  }) {
    return checkPaymentStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SubscriptionEvent value)? subscriptions,
    TResult? Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult? Function(_SubscriptionEventPayment value)? checkPaymentStatus,
  }) {
    return checkPaymentStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SubscriptionEvent value)? subscriptions,
    TResult Function(_SubscriptionEventVideo value)? videoSubscription,
    TResult Function(_SubscriptionEventPayment value)? checkPaymentStatus,
    required TResult orElse(),
  }) {
    if (checkPaymentStatus != null) {
      return checkPaymentStatus(this);
    }
    return orElse();
  }
}

abstract class _SubscriptionEventPayment implements SubscriptionEvent {
  const factory _SubscriptionEventPayment(
      {required final String videoId,
      required final int mode}) = _$_SubscriptionEventPayment;

  String get videoId;
  int get mode;
  @JsonKey(ignore: true)
  _$$_SubscriptionEventPaymentCopyWith<_$_SubscriptionEventPayment>
      get copyWith => throw _privateConstructorUsedError;
}
