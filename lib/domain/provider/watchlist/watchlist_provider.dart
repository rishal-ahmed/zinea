import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/watchlist/watchlist_event.dart';
import 'package:zinea/application/watchlist/watchlist_notifier.dart';
import 'package:zinea/application/watchlist/watchlist_state.dart';

class WatchlistProvider {
  //==--==--==--==--==-- Watchlist Provider --==--==--==--==--==
  static final watchlistProvider =
      StateNotifierProvider<WatchlistNotifier, WatchlistState>((ref) {
    return WatchlistNotifier()..emit(const WatchlistEvent.watchlists());
  });

  //==--==--==--==--==-- Modify Watchlist Provider --==--==--==--==--==
  static final modifyWatchlistProvider =
      StateNotifierProvider.autoDispose<WatchlistNotifier, WatchlistState>(
          (ref) {
    return WatchlistNotifier();
  });
}
