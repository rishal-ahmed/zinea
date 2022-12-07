import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_event.freezed.dart';

@freezed
class ConfigEvent with _$ConfigEvent {
  const factory ConfigEvent.config() = _ConfigEvent;
}
