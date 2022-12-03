import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/endpoints.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_widget.dart';

class SearchIdleItemWidget extends StatelessWidget {
  const SearchIdleItemWidget({
    super.key,
    required this.video,
    this.shimmer = false,
  });

  final VideoModel? video;
  final bool shimmer;

  @override
  Widget build(BuildContext context) {
    return !shimmer
        ? Row(
            children: [
              Container(
                width: 32.w,
                height: 16.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(kImageAppendUrl + video!.image),
                  ),
                ),
              ),
              dWidth2,
              Expanded(
                child: FractionallySizedBox(
                  widthFactor: .95,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    video!.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextUtils.theme(context).titleMedium,
                  ),
                ),
              ),
              dWidth3,
              CircleAvatar(
                radius: 15.sp,
                child: CircleAvatar(
                  radius: 14.5.sp,
                  backgroundColor: kBlack,
                  child: FittedBox(
                    child: Icon(
                      Icons.play_arrow,
                      size: 18.sp,
                      color: kWhite,
                    ),
                  ),
                ),
              )
            ],
          )
        : ShimmerWidget(
            isLoading: true,
            shimmerChild: Row(
              children: [
                Container(
                  color: kWhite,
                  width: 32.w,
                  height: 16.w,
                ),
                dWidth2,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FractionallySizedBox(
                          widthFactor: .95,
                          child: Container(color: kWhite, height: 13.sp)),
                      dHeight05,
                      FractionallySizedBox(
                          widthFactor: .5,
                          child: Container(color: kWhite, height: 13.sp)),
                    ],
                  ),
                ),
                dWidth3,
                CircleAvatar(radius: 15.sp)
              ],
            ),
          );
  }
}
