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
    required TResult Function(String videoId, String rating) addRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId, String rating)? addRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId, String rating)? addRating,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InfoEvent value) info,
    required TResult Function(_InfoEventRating value) addRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventRating value)? addRating,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventRating value)? addRating,
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
    required TResult Function(String videoId, String rating) addRating,
  }) {
    return info(videoId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId, String rating)? addRating,
  }) {
    return info?.call(videoId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId, String rating)? addRating,
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
    required TResult Function(_InfoEventRating value) addRating,
  }) {
    return info(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventRating value)? addRating,
  }) {
    return info?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventRating value)? addRating,
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
abstract class _$$_InfoEventRatingCopyWith<$Res>
    implements $InfoEventCopyWith<$Res> {
  factory _$$_InfoEventRatingCopyWith(
          _$_InfoEventRating value, $Res Function(_$_InfoEventRating) then) =
      __$$_InfoEventRatingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String videoId, String rating});
}

/// @nodoc
class __$$_InfoEventRatingCopyWithImpl<$Res>
    extends _$InfoEventCopyWithImpl<$Res, _$_InfoEventRating>
    implements _$$_InfoEventRatingCopyWith<$Res> {
  __$$_InfoEventRatingCopyWithImpl(
      _$_InfoEventRating _value, $Res Function(_$_InfoEventRating) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? videoId = null,
    Object? rating = null,
  }) {
    return _then(_$_InfoEventRating(
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

class _$_InfoEventRating implements _InfoEventRating {
  const _$_InfoEventRating({required this.videoId, required this.rating});

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
            other is _$_InfoEventRating &&
            (identical(other.videoId, videoId) || other.videoId == videoId) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, videoId, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InfoEventRatingCopyWith<_$_InfoEventRating> get copyWith =>
      __$$_InfoEventRatingCopyWithImpl<_$_InfoEventRating>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String videoId) info,
    required TResult Function(String videoId, String rating) addRating,
  }) {
    return addRating(videoId, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String videoId)? info,
    TResult? Function(String videoId, String rating)? addRating,
  }) {
    return addRating?.call(videoId, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String videoId)? info,
    TResult Function(String videoId, String rating)? addRating,
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
    required TResult Function(_InfoEventRating value) addRating,
  }) {
    return addRating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InfoEvent value)? info,
    TResult? Function(_InfoEventRating value)? addRating,
  }) {
    return addRating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InfoEvent value)? info,
    TResult Function(_InfoEventRating value)? addRating,
    required TResult orElse(),
  }) {
    if (addRating != null) {
      return addRating(this);
    }
    return orElse();
  }
}

abstract class _InfoEventRating implements InfoEvent {
  const factory _InfoEventRating(
      {required final String videoId,
      required final String rating}) = _$_InfoEventRating;

  @override
  String get videoId;
  String get rating;
  @override
  @JsonKey(ignore: true)
  _$$_InfoEventRatingCopyWith<_$_InfoEventRating> get copyWith =>
      throw _privateConstructorUsedError;
}
