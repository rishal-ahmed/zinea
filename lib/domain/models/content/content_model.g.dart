// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ContentModel _$$_ContentModelFromJson(Map<String, dynamic> json) =>
    _$_ContentModel(
      id: json['id'] as String,
      name: json['contentTypeName'] as String,
      image: json['emptyImagePath'] as String,
      genres: (json['catalogs'] as List<dynamic>)
          .map((e) => GenreModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ContentModelToJson(_$_ContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contentTypeName': instance.name,
      'emptyImagePath': instance.image,
      'catalogs': instance.genres,
    };
