import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/screens/home/widgets/home_card_widget.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_widget.dart';

class HomeTitleHorizontalListWidget extends StatelessWidget {
  const HomeTitleHorizontalListWidget({
    Key? key,
    required this.videos,
    this.shimmer = false,
  }) : super(key: key);

  final List<VideoModel> videos;
  final bool shimmer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      child: shimmer
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerWidget(
                  height: TextUtils.theme(context).titleLarge?.fontSize,
                  width: 40.w,
                ),
                dHeight1,
                LimitedBox(
                  maxHeight: 40.w,
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ShimmerWidget(
                        width: 27.w,
                        height: double.infinity,
                      );
                    },
                    separatorBuilder: (context, index) {
                      return dWidth2;
                    },
                    itemCount: 10,
                  ),
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  videos.first.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextUtils.theme(context).titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                dHeight1,
                LimitedBox(
                  maxHeight: 40.w,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final VideoModel video = videos[index];
                      return InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, routeInfo);
                        },
                        child: HomeCardWidget(video: video),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return dWidth2;
                    },
                    itemCount: videos.length,
                  ),
                )
              ],
            ),
    );
  }
}
