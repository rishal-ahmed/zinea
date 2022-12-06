import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/watchlist/watchlist_event.dart';
import 'package:zinea/application/watchlist/watchlist_state.dart';

class WatchlistNotifier extends StateNotifier<WatchlistState> {
  WatchlistNotifier() : super(const WatchlistState());

  final WatchlistState initialState = const WatchlistState();

  void emit(WatchlistEvent event) {
    event.map(
      //==--==--==--==--==-- Watchlists Event --==--==--==--==--==
      watchlists: (eventWatchlist) {},
      //==--==--==--==--==-- Add Watchlist Event --==--==--==--==--==
      addWatchlist: (eventAddWatchlist) {
        // Loading
        state = initialState.copyWith(isLoading: true);
      },
    );
  }
}
