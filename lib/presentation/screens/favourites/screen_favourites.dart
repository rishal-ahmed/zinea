import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';

class ScreenFavourites extends StatelessWidget {
  const ScreenFavourites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppbarWidget(title: 'Favourites'),
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
              return kNone;
              // return const PosterCard(
              //   imageUrl:
              //       'https://www.themoviedb.org/t/p/w1280/bI7lGR5HuYlENlp11brKUAaPHuO.jpg',
              // );
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
