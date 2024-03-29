import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

@freezed
class VideoModel with _$VideoModel {
  const factory VideoModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'image') required String image,
    @JsonKey(name: 'bannerImage') String? bannerImage,
    @JsonKey(name: 'catalogText') required String genres,
    @JsonKey(name: 'releaseYear') required String releaseYear,
    @JsonKey(name: 'rating') required String rating,
    @JsonKey(name: 'watchListStatus') String? watchlistStatus,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'trailerLink') String? trailerLink,
    @JsonKey(name: 'vimeoId') String? vimeoId,
    @JsonKey(name: 'buyPrice') String? buyPrice,
    @JsonKey(name: 'rentPrice') String? rentPrice,
    @JsonKey(name: 'enableBuy') String? enableBuy,
  }) = _VideoModel;

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);
}
