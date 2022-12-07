import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/config/config_event.dart';
import 'package:zinea/application/config/config_state.dart';
import 'package:zinea/infrastructure/config/config_repository.dart';

class ConfigNotifier extends StateNotifier<ConfigState> {
  ConfigNotifier() : super(const ConfigState());

  final ConfigState initialState = const ConfigState();

  void emit(ConfigEvent event) {
    event.map(
      //=-=-=-=-=-=-=-=-=-=- Config Event -=-=-=-=-=-=-=-=-=-=
      config: (eventConfig) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Config Api
        final result = await ConfigRepository().config;

        final ConfigState configState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (l) => initialState.copyWith(isError: true),
          //=-=-=-=-=- Success -=-=-=-=-=
          (r) => initialState.copyWith(contents: r),
        );

        // Notify UI
        state = configState;
      },
    );
  }
}
