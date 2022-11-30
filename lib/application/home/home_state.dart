import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/video/video_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required bool isError,
    @Default([]) List<List<VideoModel>> homeContents,
  }) = _HomeState;

  factory HomeState.initial() =>
      const HomeState(isLoading: false, isError: false);
}
