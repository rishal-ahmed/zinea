import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/info/info_event.dart';
import 'package:zinea/application/info/info_state.dart';
import 'package:zinea/infrastructure/info/info_repository.dart';
import 'package:zinea/infrastructure/subscription/subscription_repository.dart';

class InfoNotifier extends StateNotifier<InfoState> {
  InfoNotifier() : super(const InfoState());

  final InfoState initialState = const InfoState();

  void emit(InfoEvent event) {
    event.map(
      //=-=-=-=-=-=-=-=-=-=- Info Event -=-=-=-=-=-=-=-=-=-=
      info: (eventInfo) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Info Api
        final result = await InfoRepository().info(videoId: eventInfo.videoId);

        final InfoState infoState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) => initialState.copyWith(isError: true),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(info: data),
        );

        // Notify UI
        state = infoState;
      },

      //=-=-=-=-=-=-=-=-=-=- Video Subscription Status Event -=-=-=-=-=-=-=-=-=-=
      videoSubscription: (eventSubscription) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Video Subscription Api
        final result = await SubscriptionRepository()
            .videoSubscriptionStatus(videoId: eventSubscription.videoId);

        final InfoState infoState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) => initialState.copyWith(isError: true),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(subscriptionStatus: data),
        );

        // Notify UI
        state = infoState;
      },

      //=-=-=-=-=-=-=-=-=-=- Add Rating Event -=-=-=-=-=-=-=-=-=-=
      addRating: (eventAddRating) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Add Rating Api
        final result = await InfoRepository().addRating(
            videoId: eventAddRating.videoId, rating: eventAddRating.rating);

        final InfoState infoState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) =>
              initialState.copyWith(isError: true, message: failure.error),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(status: data),
        );

        // Notify UI
        state = infoState;
      },

      //=-=-=-=-=-=-=-=-=-=- Get Rating Event -=-=-=-=-=-=-=-=-=-=
      getRating: (eventGetRating) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Get Rating Api
        final result =
            await InfoRepository().getRating(videoId: eventGetRating.videoId);

        final InfoState infoState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) =>
              initialState.copyWith(isError: true, message: failure.error),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(rating: data),
        );

        // Notify UI
        state = infoState;
      },
    );
  }
}
