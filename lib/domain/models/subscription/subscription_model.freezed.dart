// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'subscription_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubscriptionModel _$SubscriptionModelFromJson(Map<String, dynamic> json) {
  return _SubscriptionModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionModel {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  String get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax')
  String get tax => throw _privateConstructorUsedError;
  @JsonKey(name: 'period')
  String get period => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'isDeleted')
  String get isDeleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionModelCopyWith<SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionModelCopyWith<$Res> {
  factory $SubscriptionModelCopyWith(
          SubscriptionModel value, $Res Function(SubscriptionModel) then) =
      _$SubscriptionModelCopyWithImpl<$Res, SubscriptionModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'period') String period,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'isDeleted') String isDeleted});
}

/// @nodoc
class _$SubscriptionModelCopyWithImpl<$Res, $Val extends SubscriptionModel>
    implements $SubscriptionModelCopyWith<$Res> {
  _$SubscriptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? tax = null,
    Object? period = null,
    Object? status = null,
    Object? isDeleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SubscriptionModelCopyWith<$Res>
    implements $SubscriptionModelCopyWith<$Res> {
  factory _$$_SubscriptionModelCopyWith(_$_SubscriptionModel value,
          $Res Function(_$_SubscriptionModel) then) =
      __$$_SubscriptionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'price') String price,
      @JsonKey(name: 'tax') String tax,
      @JsonKey(name: 'period') String period,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'isDeleted') String isDeleted});
}

/// @nodoc
class __$$_SubscriptionModelCopyWithImpl<$Res>
    extends _$SubscriptionModelCopyWithImpl<$Res, _$_SubscriptionModel>
    implements _$$_SubscriptionModelCopyWith<$Res> {
  __$$_SubscriptionModelCopyWithImpl(
      _$_SubscriptionModel _value, $Res Function(_$_SubscriptionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? price = null,
    Object? tax = null,
    Object? period = null,
    Object? status = null,
    Object? isDeleted = null,
  }) {
    return _then(_$_SubscriptionModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String,
      tax: null == tax
          ? _value.tax
          : tax // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      isDeleted: null == isDeleted
          ? _value.isDeleted
          : isDeleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubscriptionModel implements _SubscriptionModel {
  const _$_SubscriptionModel(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'price') required this.price,
      @JsonKey(name: 'tax') required this.tax,
      @JsonKey(name: 'period') required this.period,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'isDeleted') required this.isDeleted});

  factory _$_SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_SubscriptionModelFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'price')
  final String price;
  @override
  @JsonKey(name: 'tax')
  final String tax;
  @override
  @JsonKey(name: 'period')
  final String period;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'isDeleted')
  final String isDeleted;

  @override
  String toString() {
    return 'SubscriptionModel(id: $id, name: $name, price: $price, tax: $tax, period: $period, status: $status, isDeleted: $isDeleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubscriptionModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.tax, tax) || other.tax == tax) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.isDeleted, isDeleted) ||
                other.isDeleted == isDeleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, price, tax, period, status, isDeleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SubscriptionModelCopyWith<_$_SubscriptionModel> get copyWith =>
      __$$_SubscriptionModelCopyWithImpl<_$_SubscriptionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubscriptionModelToJson(
      this,
    );
  }
}

abstract class _SubscriptionModel implements SubscriptionModel {
  const factory _SubscriptionModel(
          {@JsonKey(name: 'id') required final String id,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'price') required final String price,
          @JsonKey(name: 'tax') required final String tax,
          @JsonKey(name: 'period') required final String period,
          @JsonKey(name: 'status') required final String status,
          @JsonKey(name: 'isDeleted') required final String isDeleted}) =
      _$_SubscriptionModel;

  factory _SubscriptionModel.fromJson(Map<String, dynamic> json) =
      _$_SubscriptionModel.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'price')
  String get price;
  @override
  @JsonKey(name: 'tax')
  String get tax;
  @override
  @JsonKey(name: 'period')
  String get period;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'isDeleted')
  String get isDeleted;
  @override
  @JsonKey(ignore: true)
  _$$_SubscriptionModelCopyWith<_$_SubscriptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
