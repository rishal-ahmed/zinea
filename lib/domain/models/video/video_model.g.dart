// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoModel _$$_VideoModelFromJson(Map<String, dynamic> json) =>
    _$_VideoModel(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: json['image'] as String,
      bannerImage: json['bannerImage'] as String?,
      genres: json['catalogText'] as String,
      releaseYear: json['releaseYear'] as String,
      rating: json['rating'] as String,
      watchlistStatus: json['watchListStatus'] as String?,
      name: json['name'] as String?,
      trailerLink: json['trailerLink'] as String?,
      vimeoId: json['vimeoId'] as String?,
    );

Map<String, dynamic> _$$_VideoModelToJson(_$_VideoModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'bannerImage': instance.bannerImage,
      'catalogText': instance.genres,
      'releaseYear': instance.releaseYear,
      'rating': instance.rating,
      'watchListStatus': instance.watchlistStatus,
      'name': instance.name,
      'trailerLink': instance.trailerLink,
      'vimeoId': instance.vimeoId,
    };
