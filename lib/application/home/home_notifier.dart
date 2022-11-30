import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/home/home_event.dart';
import 'package:zinea/application/home/home_state.dart';
import 'package:zinea/infrastructure/home/home_repository.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(HomeState.initial());

  final HomeState initialState = HomeState.initial();

  void emit(HomeEvent event) {
    event.map(home: (homeEvent) async {
      // Loading
      state = initialState.copyWith(isLoading: true);

      // Home Api
      final result = await HomeRepository().home;

      final HomeState homeState = result.fold(
        //=-=-=-=- Failure -=-=-=-=-=
        (failure) => initialState.copyWith(isError: true),
        //=-=-=-=- Success -=-=-=-=-=
        (data) => initialState.copyWith(
          homeContents: data,
        ),
      );

      // Notify UI
      state = homeState;
    });
  }
}
