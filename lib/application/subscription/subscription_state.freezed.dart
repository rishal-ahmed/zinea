// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SubscriptionState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get subscriptionStatus => throw _privateConstructorUsedError;
  List<SubscriptionModel> get subscriptions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SubscriptionStateCopyWith<SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionStateCopyWith<$Res> {
  factory $SubscriptionStateCopyWith(
          SubscriptionState value, $Res Function(SubscriptionState) then) =
      _$SubscriptionStateCopyWithImpl<$Res, SubscriptionState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool status,
      String message,
      String subscriptionStatus,
      List<SubscriptionModel> subscriptions});
}

/// @nodoc
class _$SubscriptionStateCopyWithImpl<$Res, $Val extends SubscriptionState>
    implements $SubscriptionStateCopyWith<$Res> {
  _$SubscriptionStateCopyWithImpl(this._value, this._then);

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
    Object? subscriptionStatus = null,
    Object? subscriptions = null,
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
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubscriptionStateCopyWith<$Res>
    implements $SubscriptionStateCopyWith<$Res> {
  factory _$$_SubscriptionStateCopyWith(_$_SubscriptionState value,
          $Res Function(_$_SubscriptionState) then) =
      __$$_SubscriptionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool isError,
      bool status,
      String message,
      String subscriptionStatus,
      List<SubscriptionModel> subscriptions});
}

/// @nodoc
class __$$_SubscriptionStateCopyWithImpl<$Res>
    extends _$SubscriptionStateCopyWithImpl<$Res, _$_SubscriptionState>
    implements _$$_SubscriptionStateCopyWith<$Res> {
  __$$_SubscriptionStateCopyWithImpl(
      _$_SubscriptionState _value, $Res Function(_$_SubscriptionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isError = null,
    Object? status = null,
    Object? message = null,
    Object? subscriptionStatus = null,
    Object? subscriptions = null,
  }) {
    return _then(_$_SubscriptionState(
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
      subscriptionStatus: null == subscriptionStatus
          ? _value.subscriptionStatus
          : subscriptionStatus // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptions: null == subscriptions
          ? _value._subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionModel>,
    ));
  }
}

/// @nodoc

class _$_SubscriptionState implements _SubscriptionState {
  const _$_SubscriptionState(
      {this.isLoading = false,
      this.isError = false,
      this.status = false,
      this.message = '',
      this.subscriptionStatus = '',
      final List<SubscriptionModel> subscriptions = const []})
      : _subscriptions = subscriptions;

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
  @JsonKey()
  final String subscriptionStatus;
  final List<SubscriptionModel> _subscriptions;
  @override
  @JsonKey()
  List<SubscriptionModel> get subscriptions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subscriptions);
  }

  @override
  String toString() {
    return 'SubscriptionState(isLoading: $isLoading, isError: $isError, status: $status, message: $message, subscriptionStatus: $subscriptionStatus, subscriptions: $subscriptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.subscriptionStatus, subscriptionStatus) ||
                other.subscriptionStatus == subscriptionStatus) &&
            const DeepCollectionEquality()
                .equals(other._subscriptions, _subscriptions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      isError,
      status,
      message,
      subscriptionStatus,
      const DeepCollectionEquality().hash(_subscriptions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionStateCopyWith<_$_SubscriptionState> get copyWith =>
      __$$_SubscriptionStateCopyWithImpl<_$_SubscriptionState>(
          this, _$identity);
}

abstract class _SubscriptionState implements SubscriptionState {
  const factory _SubscriptionState(
      {final bool isLoading,
      final bool isError,
      final bool status,
      final String message,
      final String subscriptionStatus,
      final List<SubscriptionModel> subscriptions}) = _$_SubscriptionState;

  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  bool get status;
  @override
  String get message;
  @override
  String get subscriptionStatus;
  @override
  List<SubscriptionModel> get subscriptions;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionStateCopyWith<_$_SubscriptionState> get copyWith =>
      throw _privateConstructorUsedError;
}
