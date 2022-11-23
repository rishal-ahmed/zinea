import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/main/main_event.dart';
import 'package:zinea/application/main/main_state.dart';

class MainNotifier extends StateNotifier<MainState> {
  MainNotifier() : super(MainState.initial());

  void emit(MainEvent event) {
    event.map(
      navigate: (navEvent) async {
        // Notify UI
        state = MainState.initial().copyWith(index: navEvent.index);
      },
    );
  }
}
