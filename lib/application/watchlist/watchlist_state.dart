import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/video/video_model.dart';

part 'watchlist_state.freezed.dart';

@freezed
class WatchlistState with _$WatchlistState {
  const factory WatchlistState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default([]) List<VideoModel> watchlists,
    @Default(false) bool status,
  }) = _WatchlistState;
}
