import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/home/home_state.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/appbar/appbar_provider.dart';
import 'package:zinea/domain/provider/home/home_provider.dart';
import 'package:zinea/domain/utils/user/user_utils.dart';
import 'package:zinea/presentation/screens/home/widgets/home_banner_widget.dart';
import 'package:zinea/presentation/screens/home/widgets/home_title_horizontal_list_widget.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';
import 'package:zinea/presentation/widgets/errors/error.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final HomeState homeState = ref.watch(HomeProvider.homeProvider);

    if (homeState.isError && homeState.error == 'Invalid Token') {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        UserUtils.instance.logoutUser(context, ref);
      });
    }

    final ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      switch (scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          ref.read(AppbarProvider.appBarHideProvider.notifier).state = true;
          break;
        case ScrollDirection.reverse:
          ref.read(AppbarProvider.appBarHideProvider.notifier).state = false;
          break;
        default:
      }
    });
    return Scaffold(
      appBar: const AppbarWidget(home: true),
      extendBodyBehindAppBar: true,
      body: homeState.isError
          ? const SomethingWentWrongWidget()
          : ListView.separated(
              padding: EdgeInsets.zero,
              controller: scrollController,
              itemBuilder: (context, index) {
                final List<VideoModel> videos =
                    homeState.isLoading ? [] : homeState.homeContents[index];

                if (index == 0) {
                  //==================== Banners Fields ====================
                  return HomeBannerWidget(
                    banners:
                        homeState.isLoading ? [] : homeState.homeContents.first,
                    shimmer: homeState.isLoading,
                  );
                } else {
                  //==================== Home Contents ====================
                  return HomeTitleHorizontalListWidget(
                    videos: videos,
                    shimmer: homeState.isLoading,
                  );
                }
              },
              separatorBuilder: (context, index) {
                return dHeight1n5;
              },
              itemCount:
                  homeState.isLoading ? 4 : homeState.homeContents.length,
            ),
    );
  }
}
