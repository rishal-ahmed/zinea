import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_event.freezed.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  //==--==--==--==-- Subscriptions --==--==--==--==--==
  const factory SubscriptionEvent.subscriptions() = _SubscriptionEvent;
}
