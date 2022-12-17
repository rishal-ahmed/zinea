import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/video/video_model.dart';

part 'info_state.freezed.dart';

@freezed
class InfoState with _$InfoState {
  const factory InfoState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(null) VideoModel? info,
    @Default(false) bool status,
    @Default('') String message,
  }) = _InfoState;
}
