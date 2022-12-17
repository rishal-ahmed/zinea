import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/info/info_event.dart';
import 'package:zinea/application/info/info_notifier.dart';
import 'package:zinea/application/info/info_state.dart';

class InfoProvider {
  //==--==--==--==--==-- Info Provider --==--==--==--==--==
  static final infoProvider = StateNotifierProvider.autoDispose
      .family<InfoNotifier, InfoState, String>((ref, videoId) {
    return InfoNotifier()..emit(InfoEvent.info(videoId: videoId));
  });

  //==--==--==--==--==-- Add Rating Provider --==--==--==--==--==
  static final addRatingProvider =
      StateNotifierProvider.autoDispose<InfoNotifier, InfoState>((ref) {
    return InfoNotifier();
  });

  //==--==--==--==--==-- Rate Provider --==--==--==--==--==
  static final rateProvider = StateProvider.autoDispose<double>((ref) {
    return 0;
  });

  //==--==--==--==--==-- Volume Icon Provider --==--==--==--==--==
  static final volumeProvider = StateProvider.autoDispose<bool>((ref) {
    return true;
  });

  // //==--==--==--==--==-- Fullscreen  Provider --==--==--==--==--==
  // static final fullScreenProvider = StateProvider.autoDispose<bool>((ref) {
  //   return false;
  // });
}
