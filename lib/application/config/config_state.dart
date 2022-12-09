import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zinea/domain/models/config/config_model.dart';

part 'config_state.freezed.dart';

@freezed
class ConfigState with _$ConfigState {
  const factory ConfigState({
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(null) ConfigModel? config,
  }) = _ConfigState;
}
