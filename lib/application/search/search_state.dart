import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/video/video_model.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required bool isError,
    @Default(false) bool isSearching,
    @Default([]) List<VideoModel> videos,
  }) = _SearchState;

  factory SearchState.initial() =>
      const SearchState(isLoading: false, isError: false);
}
