import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/subscription/subscription_event.dart';
import 'package:zinea/application/subscription/subscription_state.dart';
import 'package:zinea/infrastructure/subscription/subscription_repository.dart';

class SubscriptionNotifier extends StateNotifier<SubscriptionState> {
  SubscriptionNotifier() : super(const SubscriptionState());

  final SubscriptionState initialState = const SubscriptionState();

  void emit(SubscriptionEvent event) {
    event.map(
      //=-=-=-=-=-=-=-=-=-=- Subscriptions Event -=-=-=-=-=-=-=-=-=-=
      subscriptions: (eventSubscriptions) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Subscriptions Api
        final result = await SubscriptionRepository().subscriptions;

        final SubscriptionState subscriptionState = result.fold(
          //=-=-=-=- Failure -=-=-=-=-=
          (failure) =>
              initialState.copyWith(isError: true, message: failure.error),
          //=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(subscriptions: data),
        );

        // Notify UI
        state = subscriptionState;
      },

      //=-=-=-=-=-=-=-=-=-=- Video Subscription Status Event -=-=-=-=-=-=-=-=-=-=
      videoSubscription: (eventVideo) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Video Subscription Api
        final result = await SubscriptionRepository()
            .videoSubscriptionStatus(videoId: eventVideo.videoId);

        final SubscriptionState subscriptionState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) => initialState.copyWith(isError: true),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) =>
              initialState.copyWith(status: true, subscriptionStatus: data),
        );

        // Notify UI
        state = subscriptionState;
      },

      //=-=-=-=-=-=-=-=-=-=- Check Payment Status Event -=-=-=-=-=-=-=-=-=-=
      checkPaymentStatus: (eventPayment) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Video Subscription Api
        final result = await SubscriptionRepository().checkPaymentStatus(
            videoId: eventPayment.videoId, mode: eventPayment.mode);

        final SubscriptionState subscriptionState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) =>
              initialState.copyWith(isError: true, message: failure.error),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(status: data),
        );

        // Notify UI
        state = subscriptionState;
      },
    );
  }
}
