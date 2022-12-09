// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigModel _$$_ConfigModelFromJson(Map<String, dynamic> json) =>
    _$_ConfigModel(
      isSubscriptionEnabled: json['isSubscriptionEnabled'] as bool,
      isOTPEnabled: json['isOTPEnabled'] as bool,
      isRatingEnabled: json['isRatingEnabled'] as bool,
      showAvgRating: json['showAvgRating'] as bool,
      languages: (json['contentLanguages'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      contents: (json['contentTypes'] as List<dynamic>)
          .map((e) => ContentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ConfigModelToJson(_$_ConfigModel instance) =>
    <String, dynamic>{
      'isSubscriptionEnabled': instance.isSubscriptionEnabled,
      'isOTPEnabled': instance.isOTPEnabled,
      'isRatingEnabled': instance.isRatingEnabled,
      'showAvgRating': instance.showAvgRating,
      'contentLanguages': instance.languages,
      'contentTypes': instance.contents,
    };
