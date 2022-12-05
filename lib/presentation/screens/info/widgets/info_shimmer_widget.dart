import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_child.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_widget.dart';

class InfoShimmerWidget extends StatelessWidget {
  const InfoShimmerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 35.h,
              color: kWhite,
            ),
            dHeight1n5,
            //==================== Options Field ====================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    radius: 18.sp,
                  ),
                  CircleAvatar(
                    radius: 18.sp,
                  ),
                  CircleAvatar(
                    radius: 18.sp,
                  ),
                  CircleAvatar(
                    radius: 18.sp,
                  ),
                ],
              ),
            ),

            dHeight2,

            //==================== Details Field ====================
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShimmerChild(
                    height: 15.sp,
                    widthFactor: .5,
                    seperator: dHeight1,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .8,
                    count: 1,
                    seperator: dHeight2,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .6,
                    count: 1,
                    seperator: dHeight1,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .45,
                    count: 1,
                    seperator: dHeight1,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .5,
                    count: 1,
                    seperator: dHeight1,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .35,
                    count: 1,
                    seperator: dHeight1,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .25,
                    count: 1,
                    seperator: dHeight1,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .45,
                    count: 1,
                    seperator: dHeight1,
                  ),
                  ShimmerChild(
                    height: 13.sp,
                    widthFactor: .55,
                    count: 1,
                    seperator: dHeight1,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
