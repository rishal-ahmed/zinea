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

  //==--==--==--==--==-- Volume Icon Provider --==--==--==--==--==
  static final volumeProvider = StateProvider.autoDispose<bool>((ref) {
    return false;
  });

  // //==--==--==--==--==-- Volume Icon Provider --==--==--==--==--==
  // static final fullScreenProvider = StateProvider.autoDispose<bool>((ref) {
  //   return false;
  // });
}
