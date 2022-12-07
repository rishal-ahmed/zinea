import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/watchlist/watchlist_event.dart';
import 'package:zinea/application/watchlist/watchlist_state.dart';
import 'package:zinea/infrastructure/watchlist/watchlist_repository.dart';

class WatchlistNotifier extends StateNotifier<WatchlistState> {
  WatchlistNotifier() : super(const WatchlistState());

  final WatchlistState initialState = const WatchlistState();

  void emit(WatchlistEvent event) {
    event.map(
      //==--==--==--==--==-- Watchlists Event --==--==--==--==--==
      watchlists: (eventWatchlist) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Api Watchlists
        final result = await WatchlistRepository().watchlists;

        final WatchlistState watchlistState = result.fold(
          //==-==-==-==-==- Failure -==-==-==-==-==
          (failure) => initialState.copyWith(isError: true),
          //==-==-==-==-==- Success -==-==-==-==-==
          (data) => initialState.copyWith(watchlists: data),
        );

        // Notify UI
        state = watchlistState;
      },
      //==--==--==--==--==-- Add Watchlist Event --==--==--==--==--==
      modifyWatchlist: (eventModifyWatchlist) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Api Watchlist Modify
        final result = await WatchlistRepository()
            .modifyWatchlist(videoId: eventModifyWatchlist.videoId);

        final WatchlistState watchlistState = result.fold(
          //==-==-==-==-==- Failure -==-==-==-==-==
          (failure) => initialState.copyWith(isError: true),
          //==-==-==-==-==- Success -==-==-==-==-==
          (data) => initialState.copyWith(status: data),
        );

        // Notify UI
        state = watchlistState;
      },
    );
  }
}
