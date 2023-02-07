import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/video/video_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default("") String error,
    @Default([]) List<List<VideoModel>> homeContents,
  }) = _HomeState;
}
