import 'package:freezed_annotation/freezed_annotation.dart';

part 'watchlist_event.freezed.dart';

@freezed
class WatchlistEvent with _$WatchlistEvent {
  //==-==-==-==- Watchlists -==-==-==-==
  const factory WatchlistEvent.watchlists() = _WatchlistEvent;

  //==-==-==-==- Add Watchlist -==-==-==-==
  const factory WatchlistEvent.modifyWatchlist({required String videoId}) =
      _WatchlistEventAdd;
}
