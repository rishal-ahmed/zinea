import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/filter/filter_event.dart';
import 'package:zinea/application/filter/filter_state.dart';
import 'package:zinea/infrastructure/filter/filter_repository.dart';

class FilterNotifier extends StateNotifier<FilterState> {
  FilterNotifier() : super(const FilterState());

  final FilterState initialState = const FilterState();

  void emit(FilterEvent event) {
    event.map(
      //==--==--==--==--==-- Filter Event --==--==--==--==--==
      filter: (eventFilter) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Api Filter
        final result =
            await FilterRepository().filter(filterEvent: eventFilter);

        final FilterState filterState = result.fold(
          //=-=-=-=-=- Failure -=-=-=-=-=
          (l) => initialState.copyWith(isError: true),
          //=-=-=-=-=- Success -=-=-=-=-=
          (r) => initialState.copyWith(videos: r),
        );

        // Notify Ui
        state = filterState;
      },
    );
  }
}
