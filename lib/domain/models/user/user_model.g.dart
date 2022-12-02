// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserModel _$$_UserModelFromJson(Map<String, dynamic> json) => _$_UserModel(
      id: json['userId'] as String,
      name: json['name'] as String,
      phone: json['phone'] as String,
      email: json['email'] as String,
      token: json['token'] as String,
      subscriptionPeriod: json['subscriptionPeriod'] as String?,
      subscriptionTimeStamp: json['subscritpionTimeStamp'] as String?,
    );

Map<String, dynamic> _$$_UserModelToJson(_$_UserModel instance) =>
    <String, dynamic>{
      'userId': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'token': instance.token,
      'subscriptionPeriod': instance.subscriptionPeriod,
      'subscritpionTimeStamp': instance.subscriptionTimeStamp,
    };
