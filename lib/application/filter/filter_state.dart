import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/video/video_model.dart';

part 'filter_state.freezed.dart';

@freezed
class FilterState with _$FilterState {
  const factory FilterState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default([]) List<VideoModel> videos,
  }) = _FilterState;
}
