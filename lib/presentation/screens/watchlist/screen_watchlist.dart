import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/card/poster_card.dart';

class ScreenWatchlist extends StatelessWidget {
  const ScreenWatchlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Watchlist'),
      extendBodyBehindAppBar: true,
      body: Consumer(
        builder: (context, ref, _) {
          return GridView.builder(
            itemBuilder: (BuildContext context, int index) {
              // final String? moviePoster =
              //     state.searchResultList[index].posterImageUrl;
              return const PosterCard(
                imageUrl:
                    'https://www.themoviedb.org/t/p/w1280/ujr5pztc1oitbe7ViMUOilFaJ7s.jpg',
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.w,
              crossAxisSpacing: 2.w,
              childAspectRatio: 1 / 1.2,
            ),
            itemCount: 20,
          );
        },
      ),
    );
  }
}
