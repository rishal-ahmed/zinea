import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/home/home_event.dart';
import 'package:zinea/application/home/home_notifier.dart';
import 'package:zinea/application/home/home_state.dart';

class HomeProvider {
  //=-=-=-=-=-=-=-=-=-=- Home -=-=-=-=-=-=-=-=-=-=
  static final homeProvider =
      StateNotifierProvider<HomeNotifier, HomeState>((ref) {
    return HomeNotifier()..emit(const HomeEvent.home());
  });
}
