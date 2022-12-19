import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/subscription/subscription_event.dart';
import 'package:zinea/application/subscription/subscription_notifier.dart';
import 'package:zinea/application/subscription/subscription_state.dart';

class SubscriptionProvider {
  //==--==--==--==--==-- Subscriptions --==--==--==--==--==
  static final subscriptionsProvider =
      StateNotifierProvider<SubscriptionNotifier, SubscriptionState>((ref) {
    return SubscriptionNotifier()
      ..emit(const SubscriptionEvent.subscriptions());
  });
}
