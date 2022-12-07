import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/watchlist/watchlist_notifier.dart';
import 'package:zinea/application/watchlist/watchlist_state.dart';

class WatchlistProvider {
  //==--==--==--==--==-- Modify Watchlist Provider --==--==--==--==--==
  static final modifyWatchlistProvider =
      StateNotifierProvider.autoDispose<WatchlistNotifier, WatchlistState>(
          (ref) {
    return WatchlistNotifier();
  });
}
