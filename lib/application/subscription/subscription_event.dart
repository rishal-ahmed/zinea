import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_event.freezed.dart';

@freezed
class SubscriptionEvent with _$SubscriptionEvent {
  //==--==--==--==-- Subscriptions --==--==--==--==--==
  const factory SubscriptionEvent.subscriptions() = _SubscriptionEvent;

  //=-=-=-=-=- Is Video Purchased -=-=-=-=-=
  const factory SubscriptionEvent.videoSubscription({required String videoId}) =
      _SubscriptionEventVideo;

  //==--==--==--==-- check Payment Status --==--==--==--==--==
  const factory SubscriptionEvent.checkPaymentStatus(
      {String? videoId, required int mode}) = _SubscriptionEventPayment;
}
