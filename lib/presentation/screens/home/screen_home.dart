import 'package:flutter/material.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/presentation/screens/home/widgets/home_banner_widget.dart';
import 'package:zinea/presentation/screens/home/widgets/home_title_horizontal_list_widget.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(home: true),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
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
