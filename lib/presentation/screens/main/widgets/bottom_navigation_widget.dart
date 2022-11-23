import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/main/main_event.dart';
import 'package:zinea/application/main/main_state.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/domain/provider/main/main_provider.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        final MainState mainState = ref.watch(MainProvider.navigateProvider);
        return BottomNavigationBar(
          onTap: (index) {
            ref
                .read(MainProvider.navigateProvider.notifier)
                .emit(MainEvent.navigate(index: index));
          },
          currentIndex: mainState.index,
          selectedItemColor: primaryColor,
          unselectedItemColor: kGrey,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black,
          // selectedIconTheme: const IconThemeData(color: primaryColor),
          // unselectedIconTheme: const IconThemeData(color: Colors.grey),
          selectedFontSize: 15.sp,
          unselectedFontSize: 14.sp,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.playlist_add_check),
              label: 'Watchlist',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
              label: 'Favourites',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            )
          ],
        );
      },
    );
  }
}
