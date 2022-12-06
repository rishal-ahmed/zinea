// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'watchlist_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WatchlistState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  List<VideoModel> get watchlists => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WatchlistStateCopyWith<WatchlistState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchlistStateCopyWith<$Res> {
  factory $WatchlistStateCopyWith(
          WatchlistState value, $Res Function(WatchlistState) then) =
      _$WatchlistStateCopyWithImpl<$Res, WatchlistState>;
  @useResult
  $Res call(
      {bool isLoading, bool isError, List<VideoModel> watchlists, bool status});
}

/// @nodoc
class _$WatchlistStateCopyWithImpl<$Res, $Val extends WatchlistState>
    implements $WatchlistStateCopyWith<$Res> {
  _$WatchlistStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? watchlists = null,
    Object? status = null,
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
      watchlists: null == watchlists
          ? _value.watchlists
          : watchlists // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WatchlistStateCopyWith<$Res>
    implements $WatchlistStateCopyWith<$Res> {
  factory _$$_WatchlistStateCopyWith(
          _$_WatchlistState value, $Res Function(_$_WatchlistState) then) =
      __$$_WatchlistStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, bool isError, List<VideoModel> watchlists, bool status});
}

/// @nodoc
class __$$_WatchlistStateCopyWithImpl<$Res>
    extends _$WatchlistStateCopyWithImpl<$Res, _$_WatchlistState>
    implements _$$_WatchlistStateCopyWith<$Res> {
  __$$_WatchlistStateCopyWithImpl(
      _$_WatchlistState _value, $Res Function(_$_WatchlistState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? watchlists = null,
    Object? status = null,
  }) {
    return _then(_$_WatchlistState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
      watchlists: null == watchlists
          ? _value._watchlists
          : watchlists // ignore: cast_nullable_to_non_nullable
              as List<VideoModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_WatchlistState implements _WatchlistState {
  const _$_WatchlistState(
      {this.isLoading = false,
      this.isError = false,
      final List<VideoModel> watchlists = const [],
      this.status = false})
      : _watchlists = watchlists;

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool isError;
  final List<VideoModel> _watchlists;
  @override
  @JsonKey()
  List<VideoModel> get watchlists {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_watchlists);
  }

  @override
  @JsonKey()
  final bool status;

  @override
  String toString() {
    return 'WatchlistState(isLoading: $isLoading, isError: $isError, watchlists: $watchlists, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WatchlistState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            const DeepCollectionEquality()
                .equals(other._watchlists, _watchlists) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, isError,
      const DeepCollectionEquality().hash(_watchlists), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WatchlistStateCopyWith<_$_WatchlistState> get copyWith =>
      __$$_WatchlistStateCopyWithImpl<_$_WatchlistState>(this, _$identity);
}

abstract class _WatchlistState implements WatchlistState {
  const factory _WatchlistState(
      {final bool isLoading,
      final bool isError,
      final List<VideoModel> watchlists,
      final bool status}) = _$_WatchlistState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  List<VideoModel> get watchlists;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$_WatchlistStateCopyWith<_$_WatchlistState> get copyWith =>
      throw _privateConstructorUsedError;
}
