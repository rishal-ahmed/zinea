import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    @JsonKey(name: 'userId') required String id,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'phone') required String phone,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'subscriptionPeriod') String? subscriptionPeriod,
    @JsonKey(name: 'subscritpionTimeStamp') String? subscriptionTimeStamp,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
