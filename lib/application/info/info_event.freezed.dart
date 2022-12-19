// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InfoEvent {
  String get videoId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) info,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, String rating) addRating,
    required TResult Function(String videoId) getRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, String rating)? addRating,
    TResult? Function(String videoId)? getRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, String rating)? addRating,
    TResult Function(String videoId)? getRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfoEvent value) info,
    required TResult Function(_InfoEventVideoSubscription value)
        videoSubscription,
    required TResult Function(_InfoEventAddRating value) addRating,
    required TResult Function(_InfoEventGetRating value) getRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult? Function(_InfoEventAddRating value)? addRating,
    TResult? Function(_InfoEventGetRating value)? getRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult Function(_InfoEventAddRating value)? addRating,
    TResult Function(_InfoEventGetRating value)? getRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InfoEventCopyWith<InfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoEventCopyWith<$Res> {
  factory $InfoEventCopyWith(InfoEvent value, $Res Function(InfoEvent) then) =
      _$InfoEventCopyWithImpl<$Res, InfoEvent>;
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class _$InfoEventCopyWithImpl<$Res, $Val extends InfoEvent>
    implements $InfoEventCopyWith<$Res> {
  _$InfoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_value.copyWith(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InfoEventCopyWith<$Res> implements $InfoEventCopyWith<$Res> {
  factory _$$_InfoEventCopyWith(
          _$_InfoEvent value, $Res Function(_$_InfoEvent) then) =
      __$$_InfoEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$_InfoEventCopyWithImpl<$Res>
    extends _$InfoEventCopyWithImpl<$Res, _$_InfoEvent>
    implements _$$_InfoEventCopyWith<$Res> {
  __$$_InfoEventCopyWithImpl(
      _$_InfoEvent _value, $Res Function(_$_InfoEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$_InfoEvent(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InfoEvent implements _InfoEvent {
  const _$_InfoEvent({required this.videoId});

  @override
  final String videoId;

  @override
  String toString() {
    return 'InfoEvent.info(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoEvent &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoEventCopyWith<_$_InfoEvent> get copyWith =>
      __$$_InfoEventCopyWithImpl<_$_InfoEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) info,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, String rating) addRating,
    required TResult Function(String videoId) getRating,
  }) {
    return info(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, String rating)? addRating,
    TResult? Function(String videoId)? getRating,
  }) {
    return info?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, String rating)? addRating,
    TResult Function(String videoId)? getRating,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfoEvent value) info,
    required TResult Function(_InfoEventVideoSubscription value)
        videoSubscription,
    required TResult Function(_InfoEventAddRating value) addRating,
    required TResult Function(_InfoEventGetRating value) getRating,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult? Function(_InfoEventAddRating value)? addRating,
    TResult? Function(_InfoEventGetRating value)? getRating,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult Function(_InfoEventAddRating value)? addRating,
    TResult Function(_InfoEventGetRating value)? getRating,
    required TResult orElse(),
  }) {
    if (info != null) {
      return info(this);
    }
    return orElse();
  }
}

abstract class _InfoEvent implements InfoEvent {
  const factory _InfoEvent({required final String videoId}) = _$_InfoEvent;

  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$_InfoEventCopyWith<_$_InfoEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InfoEventVideoSubscriptionCopyWith<$Res>
    implements $InfoEventCopyWith<$Res> {
  factory _$$_InfoEventVideoSubscriptionCopyWith(
          _$_InfoEventVideoSubscription value,
          $Res Function(_$_InfoEventVideoSubscription) then) =
      __$$_InfoEventVideoSubscriptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$_InfoEventVideoSubscriptionCopyWithImpl<$Res>
    extends _$InfoEventCopyWithImpl<$Res, _$_InfoEventVideoSubscription>
    implements _$$_InfoEventVideoSubscriptionCopyWith<$Res> {
  __$$_InfoEventVideoSubscriptionCopyWithImpl(
      _$_InfoEventVideoSubscription _value,
      $Res Function(_$_InfoEventVideoSubscription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$_InfoEventVideoSubscription(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InfoEventVideoSubscription implements _InfoEventVideoSubscription {
  const _$_InfoEventVideoSubscription({required this.videoId});

  @override
  final String videoId;

  @override
  String toString() {
    return 'InfoEvent.videoSubscription(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoEventVideoSubscription &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoEventVideoSubscriptionCopyWith<_$_InfoEventVideoSubscription>
      get copyWith => __$$_InfoEventVideoSubscriptionCopyWithImpl<
          _$_InfoEventVideoSubscription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) info,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, String rating) addRating,
    required TResult Function(String videoId) getRating,
  }) {
    return videoSubscription(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, String rating)? addRating,
    TResult? Function(String videoId)? getRating,
  }) {
    return videoSubscription?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, String rating)? addRating,
    TResult Function(String videoId)? getRating,
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
    required TResult Function(_InfoEvent value) info,
    required TResult Function(_InfoEventVideoSubscription value)
        videoSubscription,
    required TResult Function(_InfoEventAddRating value) addRating,
    required TResult Function(_InfoEventGetRating value) getRating,
  }) {
    return videoSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult? Function(_InfoEventAddRating value)? addRating,
    TResult? Function(_InfoEventGetRating value)? getRating,
  }) {
    return videoSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult Function(_InfoEventAddRating value)? addRating,
    TResult Function(_InfoEventGetRating value)? getRating,
    required TResult orElse(),
  }) {
    if (videoSubscription != null) {
      return videoSubscription(this);
    }
    return orElse();
  }
}

abstract class _InfoEventVideoSubscription implements InfoEvent {
  const factory _InfoEventVideoSubscription({required final String videoId}) =
      _$_InfoEventVideoSubscription;

  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$_InfoEventVideoSubscriptionCopyWith<_$_InfoEventVideoSubscription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InfoEventAddRatingCopyWith<$Res>
    implements $InfoEventCopyWith<$Res> {
  factory _$$_InfoEventAddRatingCopyWith(_$_InfoEventAddRating value,
          $Res Function(_$_InfoEventAddRating) then) =
      __$$_InfoEventAddRatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId, String rating});
}

/// @nodoc
class __$$_InfoEventAddRatingCopyWithImpl<$Res>
    extends _$InfoEventCopyWithImpl<$Res, _$_InfoEventAddRating>
    implements _$$_InfoEventAddRatingCopyWith<$Res> {
  __$$_InfoEventAddRatingCopyWithImpl(
      _$_InfoEventAddRating _value, $Res Function(_$_InfoEventAddRating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? rating = null,
  }) {
    return _then(_$_InfoEventAddRating(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InfoEventAddRating implements _InfoEventAddRating {
  const _$_InfoEventAddRating({required this.videoId, required this.rating});

  @override
  final String videoId;
  @override
  final String rating;

  @override
  String toString() {
    return 'InfoEvent.addRating(videoId: $videoId, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoEventAddRating &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoEventAddRatingCopyWith<_$_InfoEventAddRating> get copyWith =>
      __$$_InfoEventAddRatingCopyWithImpl<_$_InfoEventAddRating>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) info,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, String rating) addRating,
    required TResult Function(String videoId) getRating,
  }) {
    return addRating(videoId, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, String rating)? addRating,
    TResult? Function(String videoId)? getRating,
  }) {
    return addRating?.call(videoId, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, String rating)? addRating,
    TResult Function(String videoId)? getRating,
    required TResult orElse(),
  }) {
    if (addRating != null) {
      return addRating(videoId, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfoEvent value) info,
    required TResult Function(_InfoEventVideoSubscription value)
        videoSubscription,
    required TResult Function(_InfoEventAddRating value) addRating,
    required TResult Function(_InfoEventGetRating value) getRating,
  }) {
    return addRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult? Function(_InfoEventAddRating value)? addRating,
    TResult? Function(_InfoEventGetRating value)? getRating,
  }) {
    return addRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult Function(_InfoEventAddRating value)? addRating,
    TResult Function(_InfoEventGetRating value)? getRating,
    required TResult orElse(),
  }) {
    if (addRating != null) {
      return addRating(this);
    }
    return orElse();
  }
}

abstract class _InfoEventAddRating implements InfoEvent {
  const factory _InfoEventAddRating(
      {required final String videoId,
      required final String rating}) = _$_InfoEventAddRating;

  @override
  String get videoId;
  String get rating;
  @override
  @JsonKey(ignore: true)
  _$$_InfoEventAddRatingCopyWith<_$_InfoEventAddRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InfoEventGetRatingCopyWith<$Res>
    implements $InfoEventCopyWith<$Res> {
  factory _$$_InfoEventGetRatingCopyWith(_$_InfoEventGetRating value,
          $Res Function(_$_InfoEventGetRating) then) =
      __$$_InfoEventGetRatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId});
}

/// @nodoc
class __$$_InfoEventGetRatingCopyWithImpl<$Res>
    extends _$InfoEventCopyWithImpl<$Res, _$_InfoEventGetRating>
    implements _$$_InfoEventGetRatingCopyWith<$Res> {
  __$$_InfoEventGetRatingCopyWithImpl(
      _$_InfoEventGetRating _value, $Res Function(_$_InfoEventGetRating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
  }) {
    return _then(_$_InfoEventGetRating(
      videoId: null == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InfoEventGetRating implements _InfoEventGetRating {
  const _$_InfoEventGetRating({required this.videoId});

  @override
  final String videoId;

  @override
  String toString() {
    return 'InfoEvent.getRating(videoId: $videoId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InfoEventGetRating &&
            (identical(other.videoId, videoId) || other.videoId == videoId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoEventGetRatingCopyWith<_$_InfoEventGetRating> get copyWith =>
      __$$_InfoEventGetRatingCopyWithImpl<_$_InfoEventGetRating>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) info,
    required TResult Function(String videoId) videoSubscription,
    required TResult Function(String videoId, String rating) addRating,
    required TResult Function(String videoId) getRating,
  }) {
    return getRating(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId)? videoSubscription,
    TResult? Function(String videoId, String rating)? addRating,
    TResult? Function(String videoId)? getRating,
  }) {
    return getRating?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId)? videoSubscription,
    TResult Function(String videoId, String rating)? addRating,
    TResult Function(String videoId)? getRating,
    required TResult orElse(),
  }) {
    if (getRating != null) {
      return getRating(videoId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfoEvent value) info,
    required TResult Function(_InfoEventVideoSubscription value)
        videoSubscription,
    required TResult Function(_InfoEventAddRating value) addRating,
    required TResult Function(_InfoEventGetRating value) getRating,
  }) {
    return getRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult? Function(_InfoEventAddRating value)? addRating,
    TResult? Function(_InfoEventGetRating value)? getRating,
  }) {
    return getRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventVideoSubscription value)? videoSubscription,
    TResult Function(_InfoEventAddRating value)? addRating,
    TResult Function(_InfoEventGetRating value)? getRating,
    required TResult orElse(),
  }) {
    if (getRating != null) {
      return getRating(this);
    }
    return orElse();
  }
}

abstract class _InfoEventGetRating implements InfoEvent {
  const factory _InfoEventGetRating({required final String videoId}) =
      _$_InfoEventGetRating;

  @override
  String get videoId;
  @override
  @JsonKey(ignore: true)
  _$$_InfoEventGetRatingCopyWith<_$_InfoEventGetRating> get copyWith =>
      throw _privateConstructorUsedError;
}
