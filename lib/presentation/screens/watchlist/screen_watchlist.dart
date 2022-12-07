import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/watchlist/watchlist_state.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/watchlist/watchlist_provider.dart';
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
          final WatchlistState state =
              ref.watch(WatchlistProvider.watchlistProvider);

          final List<VideoModel> watchlists =
              state.isLoading ? [] : state.watchlists;

          return GridView.builder(
            itemBuilder: (BuildContext context, int index) {
              final VideoModel? video =
                  state.isLoading ? null : watchlists[index];
              return PosterCard(
                shimmer: state.isLoading,
                video: video,
              );
            },
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 2.w,
              crossAxisSpacing: 2.w,
              childAspectRatio: 1 / 1.2,
            ),
            itemCount: state.isLoading ? 20 : watchlists.length,
          );
        },
      ),
    );
  }
}
