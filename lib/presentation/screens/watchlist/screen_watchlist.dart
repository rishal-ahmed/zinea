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
          // if (state.isLoading) {
          //   return const Center(child: CircularProgressIndicator());
          // } else if (state.isError) {
          //   return const Center(child: Text('Something went wrong!'));
          // } else if (state.searchResultList.isEmpty) {
          //   return const Center(child: Text('No results found!'));
          // }

          return GridView.builder(
            itemBuilder: (BuildContext context, int index) {
              // final String? moviePoster =
              //     state.searchResultList[index].posterImageUrl;
              return const PosterCard(
                imageUrl: '',
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
