import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/home/home_event.dart';
import 'package:zinea/application/home/home_notifier.dart';
import 'package:zinea/application/home/home_state.dart';
import 'package:zinea/application/search/search_notifier.dart';
import 'package:zinea/application/search/search_state.dart';

class SearchProvider {
  //=-=-=-=-=-=-=-=-=-=- Top Search -=-=-=-=-=-=-=-=-=-=
  static final topSearchProvider =
      StateNotifierProvider<HomeNotifier, HomeState>((ref) {
    return HomeNotifier()..emit(const HomeEvent.home());
  });

  //=-=-=-=-=-=-=-=-=-=- Search -=-=-=-=-=-=-=-=-=-=
  static final searchProvider =
      StateNotifierProvider<SearchNotifier, SearchState>((ref) {
    return SearchNotifier();
  });
}
