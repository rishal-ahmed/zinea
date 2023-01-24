import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/subscription/subscription_model.dart';

part 'subscription_state.freezed.dart';

@freezed
class SubscriptionState with _$SubscriptionState {
  const factory SubscriptionState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool status,
    @Default('') String message,
    @Default('') String subscriptionStatus,
    @Default([]) List<SubscriptionModel> subscriptions,
  }) = _SubscriptionState;
}
