import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/genre/genre_model.dart';

part 'content_model.freezed.dart';
part 'content_model.g.dart';

@freezed
class ContentModel with _$ContentModel {
  const factory ContentModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'contentTypeName') required String name,
    @JsonKey(name: 'emptyImagePath') required String image,
    @JsonKey(name: 'catalogs') required List<GenreModel> genres,
  }) = _ContentModel;

  factory ContentModel.fromJson(Map<String, dynamic> json) =>
      _$ContentModelFromJson(json);
}
