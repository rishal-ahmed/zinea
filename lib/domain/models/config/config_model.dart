import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/content/content_model.dart';

part 'config_model.freezed.dart';
part 'config_model.g.dart';

@freezed
class ConfigModel with _$ConfigModel {
  const factory ConfigModel({
    @JsonKey(name: 'isSubscriptionEnabled') required bool isSubscriptionEnabled,
    @JsonKey(name: 'isOTPEnabled') required bool isOTPEnabled,
    @JsonKey(name: 'isRatingEnabled') required bool isRatingEnabled,
    @JsonKey(name: 'showAvgRating') required bool showAvgRating,
    @JsonKey(name: 'contentLanguages') required List<String> languages,
    @JsonKey(name: 'contentTypes') required List<ContentModel> contents,
  }) = _ConfigModel;

  factory ConfigModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigModelFromJson(json);
}
