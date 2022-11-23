import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/main/main_notifier.dart';
import 'package:zinea/application/main/main_state.dart';

class MainProvider {
  //==--==--==--==--==-- Navigate --==--==--==--==--==
  static final navigateProvider =
      StateNotifierProvider<MainNotifier, MainState>((ref) {
    return MainNotifier();
  });
}
