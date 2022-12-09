import 'package:zinea/domain/models/config/config_model.dart';

class ConfigUtils {
  //========== Singleton Instance ==========
  ConfigUtils._();
  static final ConfigUtils instance = ConfigUtils._();
  factory ConfigUtils() {
    return instance;
  }

  //========== Model Classes ==========
  late ConfigModel config;
}
