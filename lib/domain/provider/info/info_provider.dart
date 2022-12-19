import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/info/info_event.dart';
import 'package:zinea/application/info/info_notifier.dart';
import 'package:zinea/application/info/info_state.dart';

class InfoProvider {
  //==--==--==--==--==-- Info --==--==--==--==--==
  static final infoProvider = StateNotifierProvider.autoDispose
      .family<InfoNotifier, InfoState, String>((ref, videoId) {
    return InfoNotifier()..emit(InfoEvent.info(videoId: videoId));
  });

  //==--==--==--==--==-- Video Subscription Stutus --==--==--==--==--==
  static final videoSubscriptionStatus = StateNotifierProvider.family
      .autoDispose<InfoNotifier, InfoState, String>((ref, videoId) {
    return InfoNotifier()..emit(InfoEvent.videoSubscription(videoId: videoId));
  });

  //==--==--==--==--==-- Add Rating --==--==--==--==--==
  static final addRatingProvider =
      StateNotifierProvider.autoDispose<InfoNotifier, InfoState>((ref) {
    return InfoNotifier();
  });

  //==--==--==--==--==-- Get Rating --==--==--==--==--==
  static final getRatingProvider = StateNotifierProvider.family
      .autoDispose<InfoNotifier, InfoState, String>((ref, videoId) {
    return InfoNotifier()..emit(InfoEvent.getRating(videoId: videoId));
  });

  //==--==--==--==--==-- Rate --==--==--==--==--==
  static final rateProvider = StateProvider.autoDispose<double>((ref) {
    return 0;
  });

  //==--==--==--==--==-- Volume Icon --==--==--==--==--==
  static final volumeProvider = StateProvider.autoDispose<bool>((ref) {
    return true;
  });
}
