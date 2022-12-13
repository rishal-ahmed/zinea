// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubscriptionModel _$$_SubscriptionModelFromJson(Map<String, dynamic> json) =>
    _$_SubscriptionModel(
      id: json['id'] as String,
      name: json['name'] as String,
      price: json['price'] as String,
      tax: json['tax'] as String,
      period: json['period'] as String,
      status: json['status'] as String,
      isDeleted: json['isDeleted'] as String,
    );

Map<String, dynamic> _$$_SubscriptionModelToJson(
        _$_SubscriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'tax': instance.tax,
      'period': instance.period,
      'status': instance.status,
      'isDeleted': instance.isDeleted,
    };
