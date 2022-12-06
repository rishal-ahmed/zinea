import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
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
      // extendBodyBehindAppBar: true,
      body: state.isLoading
          ? const InfoShimmerWidget()
          : Builder(
              builder: (context) {
                final VideoModel info = state.info!;
                final String? trailerUrl = info.trailerLink;
                log('trailerLink = $trailerUrl');
                late final YoutubePlayerController controller;

                if (trailerUrl != null && trailerUrl.isNotEmpty) {
                  controller = YoutubePlayerController(
                    initialVideoId:
                        YoutubePlayer.convertUrlToId(info.trailerLink!)!,
                    flags: const YoutubePlayerFlags(
                      autoPlay: true,
                      mute: true,
                      hideControls: false,
                    ),
                  );
                }

                // log('Info == ${info.toString()}');
                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //==================== Video Field ====================
                      if (trailerUrl != null && trailerUrl.isNotEmpty)
                        YoutubePlayer(
                          controller: controller,
                          bottomActions: [
                            SizedBox(
                              width: 95.w,
                              height: 60,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: InkWell(
                                      splashColor: primaryColor,
                                      onTap: () {
                                        final bool volume = ref
                                            .read(InfoProvider
                                                .volumeProvider.notifier)
                                            .update((state) => !state);
                                        if (volume) {
                                          controller.unMute();
                                        } else {
                                          controller.mute();
                                        }
                                      },
                                      child: CircleAvatar(
                                        radius: 15,
                                        backgroundColor: kBlack87,
                                        child: Transform.scale(
                                          scale: 0.65,
                                          child: Consumer(
                                            builder: (context, ref, _) {
                                              final bool volume = ref.watch(
                                                  InfoProvider.volumeProvider);
                                              return Icon(
                                                volume
                                                    ? Icons.volume_up
                                                    : Icons.volume_off,
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  dHeight05,
                                  ProgressBar(
                                    colors: const ProgressBarColors(
                                      backgroundColor: kWhite30,
                                      bufferedColor: kWhite70,
                                      playedColor: primaryColor,
                                      handleColor: primaryColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                      if (trailerUrl == null || trailerUrl.isEmpty)
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.network(
                            kImageAppendUrl + info.image,
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
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
                              icon: const Icon(Icons.play_arrow),
                              color: kWhite30,
                              iconSize: 23.sp,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(info.watchlistStatus == '0'
                                  ? Icons.playlist_add
                                  : Icons.playlist_add_check),
                              color: info.watchlistStatus == '0'
                                  ? kWhite30
                                  : primaryColor,
                              iconSize: 23.sp,
                            ),
                            CircleAvatar(
                              radius: 15.sp,
                              backgroundColor: primaryColor,
                              child: Padding(
                                padding: const EdgeInsets.all(1),
                                child: CircleAvatar(
                                  backgroundColor: kBlack,
                                  child: Padding(
                                    padding: const EdgeInsets.all(1),
                                    child: CircleAvatar(
                                      backgroundColor: kWhite30,
                                      child: Padding(
                                        padding: const EdgeInsets.all(2),
                                        child: FittedBox(
                                          child: Row(
                                            children: [
                                              Text(
                                                double.parse(info.rating)
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
                              color: kWhite30,
                              iconSize: 20.sp,
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
              },
            ),
    );
  }
}
