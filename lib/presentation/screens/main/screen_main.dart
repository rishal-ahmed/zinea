import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/main/main_state.dart';
import 'package:zinea/domain/provider/main/main_provider.dart';
import 'package:zinea/presentation/screens/home/screen_home.dart';
import 'package:zinea/presentation/screens/main/widgets/bottom_navigation_widget.dart';
import 'package:zinea/presentation/screens/search/screen_search.dart';
import 'package:zinea/presentation/screens/watchlist/screen_watchlist.dart';

const List _pages = [
  ScreenHome(),
  ScreenSearch(),
  ScreenWatchlist(),
  ScreenHome(),
  ScreenHome(),
];

class ScreenMain extends ConsumerWidget {
  const ScreenMain({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MainState mainState = ref.watch(MainProvider.navigateProvider);
    return Scaffold(
      body: _pages[mainState.index],
      bottomNavigationBar: const MainBottomNavigationBar(),
    );
  }
}
