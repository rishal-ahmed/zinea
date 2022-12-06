import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/info/info_event.dart';
import 'package:zinea/application/info/info_notifier.dart';
import 'package:zinea/application/info/info_state.dart';

class WatchlistProvider {
  //==--==--==--==--==-- Watchlists Provider --==--==--==--==--==
  static final infoProvider = StateNotifierProvider.autoDispose
      .family<InfoNotifier, InfoState, String>((ref, videoId) {
    return InfoNotifier()..emit(InfoEvent.info(videoId: videoId));
  });
}
