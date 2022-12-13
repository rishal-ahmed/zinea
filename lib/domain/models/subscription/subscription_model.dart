import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_model.freezed.dart';
part 'subscription_model.g.dart';

@freezed
class SubscriptionModel with _$SubscriptionModel {
  const factory SubscriptionModel({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'price') required String price,
    @JsonKey(name: 'tax') required String tax,
    @JsonKey(name: 'period') required String period,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'isDeleted') required String isDeleted,
  }) = _SubscriptionModel;

  factory SubscriptionModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionModelFromJson(json);
}
