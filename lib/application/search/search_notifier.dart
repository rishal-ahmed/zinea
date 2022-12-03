import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/search/search_event.dart';
import 'package:zinea/application/search/search_state.dart';
import 'package:zinea/infrastructure/home/home_repository.dart';
import 'package:zinea/infrastructure/search/search_repository.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(SearchState.initial());

  final SearchState initialState = SearchState.initial();

  void emit(SearchEvent event) async {
    event.map(
      //=-=-=-=-=-=-=-=- Top Searches -=-=-=-=-=-=-=-=-=-=
      topSearches: (eventTopSearches) async {
        // Loading
        state = initialState.copyWith(isLoading: true);

        // Home Api
        final result = await HomeRepository().home;

        final SearchState searchState = result.fold(
          //=-=-=-=- Failure -=-=-=-=-=
          (failure) => initialState.copyWith(isError: true),
          //=-=-=-=- Success -=-=-=-=-=
          (data) => initialState.copyWith(
            videos: data[1],
          ),
        );

        // Notify UI
        state = searchState;
      },
      //=-=-=-=-=-=-=-=- Search -=-=-=-=-=-=-=-=-=-=
      search: (eventSearch) async {
        // Loading
        state = initialState.copyWith(isLoading: true, isSearching: true);
        log('Searching for "${eventSearch.query}"');

        // Search Api
        final result =
            await SearchRepository().search(query: eventSearch.query);

        final SearchState searchState = result.fold(
          //=-=-=-=- Failure -=-=-=-=-=
          (failure) => initialState.copyWith(
            isError: true,
            isSearching: true,
          ),
          //=-=-=-=- Success -=-=-=-=-=
          (videos) => initialState.copyWith(
            videos: videos,
            isSearching: true,
          ),
        );

        // Notify UI
        state = searchState;
      },
      //=-=-=-=-=-=-=-=- Initial -=-=-=-=-=-=-=-=-=-=
      initial: (eventInitial) {
        // Notify UI
        state = initialState;
      },
    );
  }
}
