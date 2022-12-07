// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genre_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenreModel _$$_GenreModelFromJson(Map<String, dynamic> json) =>
    _$_GenreModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: json['type'] as String,
      isActive: json['isActive'] as String,
    );

Map<String, dynamic> _$$_GenreModelToJson(_$_GenreModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'isActive': instance.isActive,
    };
