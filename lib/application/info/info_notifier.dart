import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/info/info_event.dart';
import 'package:zinea/application/info/info_state.dart';
import 'package:zinea/infrastructure/info/info_repository.dart';

class InfoNotifier extends StateNotifier<InfoState> {
  InfoNotifier() : super(const InfoState());

  final InfoState initialState = const InfoState();

  void emit(InfoEvent event) {
    event.map(
      //=-=-=-=-=-=-=-=-=-=- Info Event -=-=-=-=-=-=-=-=-=-=
      info: (eventInfo) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Info Api
        final result = await InfoRepository().info(videoId: eventInfo.videoId);

        final InfoState infoState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (failure) => initialState.copyWith(isError: true),
          //=-=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(info: data),
        );

        // Notify UI
        state = infoState;
      },
    );
  }
}
