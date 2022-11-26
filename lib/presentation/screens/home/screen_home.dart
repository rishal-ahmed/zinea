import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/provider/appbar/appbar_provider.dart';
import 'package:zinea/presentation/screens/home/widgets/home_banner_widget.dart';
import 'package:zinea/presentation/screens/home/widgets/home_title_horizontal_list_widget.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';

class ScreenHome extends ConsumerWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            const HomeBannerWidget(),
            dHeight1n5,
            const HomeTitleHorizontalListWidget(title: 'Dramas'),
            dHeight1n5,
            const HomeTitleHorizontalListWidget(title: 'Trending Now'),
            dHeight1n5,
            const HomeTitleHorizontalListWidget(title: 'Only on Zinea'),
            dHeight1n5,
            const HomeTitleHorizontalListWidget(title: 'New Releases'),
            dHeight1n5,
            const HomeTitleHorizontalListWidget(title: 'Top Searches'),
            dHeight1n5,
            const HomeTitleHorizontalListWidget(title: 'Popular on Zinea'),
          ],
        ),
      ),
    );
  }
}
