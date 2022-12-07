import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/config/config_event.dart';
import 'package:zinea/application/config/config_notifier.dart';
import 'package:zinea/application/config/config_state.dart';

class ConfigProvider {
  //==--==--==--==--==-- Config Provider --==--==--==--==--==
  static final configProvider =
      StateNotifierProvider<ConfigNotifier, ConfigState>((ref) {
    return ConfigNotifier()..emit(const ConfigEvent.config());
  });
}
