// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  @JsonKey(name: 'userId')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone')
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscriptionPeriod')
  String? get subscriptionPeriod => throw _privateConstructorUsedError;
  @JsonKey(name: 'subscritpionTimeStamp')
  String? get subscriptionTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'subscriptionPeriod') String? subscriptionPeriod,
      @JsonKey(name: 'subscritpionTimeStamp') String? subscriptionTimeStamp});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? token = null,
    Object? subscriptionPeriod = freezed,
    Object? subscriptionTimeStamp = freezed,
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
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionPeriod: freezed == subscriptionPeriod
          ? _value.subscriptionPeriod
          : subscriptionPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionTimeStamp: freezed == subscriptionTimeStamp
          ? _value.subscriptionTimeStamp
          : subscriptionTimeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserModelCopyWith<$Res> implements $UserModelCopyWith<$Res> {
  factory _$$_UserModelCopyWith(
          _$_UserModel value, $Res Function(_$_UserModel) then) =
      __$$_UserModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') String id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'phone') String phone,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'token') String token,
      @JsonKey(name: 'subscriptionPeriod') String? subscriptionPeriod,
      @JsonKey(name: 'subscritpionTimeStamp') String? subscriptionTimeStamp});
}

/// @nodoc
class __$$_UserModelCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$_UserModel>
    implements _$$_UserModelCopyWith<$Res> {
  __$$_UserModelCopyWithImpl(
      _$_UserModel _value, $Res Function(_$_UserModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? email = null,
    Object? token = null,
    Object? subscriptionPeriod = freezed,
    Object? subscriptionTimeStamp = freezed,
  }) {
    return _then(_$_UserModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      subscriptionPeriod: freezed == subscriptionPeriod
          ? _value.subscriptionPeriod
          : subscriptionPeriod // ignore: cast_nullable_to_non_nullable
              as String?,
      subscriptionTimeStamp: freezed == subscriptionTimeStamp
          ? _value.subscriptionTimeStamp
          : subscriptionTimeStamp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserModel implements _UserModel {
  const _$_UserModel(
      {@JsonKey(name: 'userId') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'phone') required this.phone,
      @JsonKey(name: 'email') required this.email,
      @JsonKey(name: 'token') required this.token,
      @JsonKey(name: 'subscriptionPeriod') this.subscriptionPeriod,
      @JsonKey(name: 'subscritpionTimeStamp') this.subscriptionTimeStamp});

  factory _$_UserModel.fromJson(Map<String, dynamic> json) =>
      _$$_UserModelFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final String id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'phone')
  final String phone;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'token')
  final String token;
  @override
  @JsonKey(name: 'subscriptionPeriod')
  final String? subscriptionPeriod;
  @override
  @JsonKey(name: 'subscritpionTimeStamp')
  final String? subscriptionTimeStamp;

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, phone: $phone, email: $email, token: $token, subscriptionPeriod: $subscriptionPeriod, subscriptionTimeStamp: $subscriptionTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.subscriptionPeriod, subscriptionPeriod) ||
                other.subscriptionPeriod == subscriptionPeriod) &&
            (identical(other.subscriptionTimeStamp, subscriptionTimeStamp) ||
                other.subscriptionTimeStamp == subscriptionTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, email, token,
      subscriptionPeriod, subscriptionTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      __$$_UserModelCopyWithImpl<_$_UserModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserModelToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {@JsonKey(name: 'userId')
          required final String id,
      @JsonKey(name: 'name')
          required final String name,
      @JsonKey(name: 'phone')
          required final String phone,
      @JsonKey(name: 'email')
          required final String email,
      @JsonKey(name: 'token')
          required final String token,
      @JsonKey(name: 'subscriptionPeriod')
          final String? subscriptionPeriod,
      @JsonKey(name: 'subscritpionTimeStamp')
          final String? subscriptionTimeStamp}) = _$_UserModel;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$_UserModel.fromJson;

  @override
  @JsonKey(name: 'userId')
  String get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'phone')
  String get phone;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'token')
  String get token;
  @override
  @JsonKey(name: 'subscriptionPeriod')
  String? get subscriptionPeriod;
  @override
  @JsonKey(name: 'subscritpionTimeStamp')
  String? get subscriptionTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_UserModelCopyWith<_$_UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
