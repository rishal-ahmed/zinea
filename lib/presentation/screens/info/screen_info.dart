import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/info/info_state.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/endpoints.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/info/info_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/screens/info/widgets/info_shimmer_widget.dart';
import 'package:zinea/presentation/widgets/appbar/appbar_widget.dart';

class ScreenInfo extends ConsumerWidget {
  const ScreenInfo({super.key, required this.videoId});

  final String videoId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final InfoState state = ref.watch(InfoProvider.infoProvider(videoId));

    return Scaffold(
      appBar: AppbarWidget(title: state.info?.title, centerTitle: true),
      extendBodyBehindAppBar: true,
      body: state.isLoading
          ? const InfoShimmerWidget()
          : Builder(builder: (context) {
              final VideoModel info = state.info!;
              // log('Info == ${info.toString()}');
              return SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //==================== Video Field ====================
                    SizedBox(
                      height: 35.h,
                      child: Stack(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 35.h,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image:
                                    NetworkImage(kImageAppendUrl + info.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: kToolbarHeight),
                              child: CircleAvatar(
                                radius: 22.sp,
                                backgroundColor: const Color(0XB3000000),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 23.sp,
                                  color: kWhite,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    dHeight1n5,
                    //==================== Options Field ====================
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(info.watchlistStatus == '0'
                                ? Icons.favorite_border
                                : Icons.favorite),
                            color: info.watchlistStatus == '0'
                                ? kWhite24
                                : primaryColor,
                            iconSize: 23.sp,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(info.watchlistStatus == '0'
                                ? Icons.playlist_add
                                : Icons.playlist_add_check),
                            color: info.watchlistStatus == '0'
                                ? kWhite24
                                : primaryColor,
                            iconSize: 25.sp,
                          ),
                          CircleAvatar(
                            radius: 16.sp,
                            backgroundColor: primaryColor,
                            child: Padding(
                              padding: const EdgeInsets.all(1),
                              child: CircleAvatar(
                                backgroundColor: kBlack,
                                child: Padding(
                                  padding: const EdgeInsets.all(1),
                                  child: CircleAvatar(
                                    backgroundColor: kWhite24,
                                    child: Padding(
                                      padding: const EdgeInsets.all(2),
                                      child: FittedBox(
                                        child: Row(
                                          children: [
                                            Text(
                                              double.parse('7.5')
                                                  .toStringAsFixed(1),
                                              style: TextUtils.theme(context)
                                                  .bodyLarge
                                                  ?.copyWith(
                                                      color: primaryColor),
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 16.sp,
                                              color: primaryColor,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.share),
                            color: kWhite24,
                            iconSize: 22.sp,
                          ),
                        ],
                      ),
                    ),

                    dHeight2,

                    //==================== Details Field ====================
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: DefaultTextStyle(
                        style: TextUtils.theme(context)
                            .titleMedium!
                            .copyWith(color: kWhite70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //===== Title =====
                            Text(
                              info.title,
                              style: TextUtils.theme(context)
                                  .headlineSmall
                                  ?.copyWith(
                                    color: kWhite,
                                    fontWeight: FontWeight.w900,
                                    letterSpacing: 1,
                                  ),
                            ),
                            dHeight08,
                            //===== Genres =====
                            Text(
                              info.genres,
                              style: const TextStyle(
                                color: kWhite54,
                              ),
                            ),
                            dHeight1n5,
                            //===== Description =====
                            Text(info.description.trim()),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            }),
    );
  }
}
