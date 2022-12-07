import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/endpoints.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_widget.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({
    Key? key,
    required this.banners,
    this.shimmer = false,
  }) : super(key: key);

  final List<VideoModel> banners;
  final bool shimmer;

  @override
  Widget build(BuildContext context) {
    return shimmer
        ? ShimmerWidget(height: 50.h)
        : ImageSlideshow(
            autoPlayInterval: 2500,
            isLoop: true,
            height: 50.h,
            children: List.generate(banners.length, (index) {
              final VideoModel banner = banners[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, routeInfo, arguments: banner.id);
                },
                child: Image.network(
                  kImageAppendUrl + banner.image,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress?.cumulativeBytesLoaded !=
                        loadingProgress?.expectedTotalBytes) {
                      return ShimmerWidget(
                          width: 50.h, height: double.infinity);
                    }
                    return child;
                  },
                ),
              );
            }),
          );

    // return Stack(
    //   children: [
    //     ImageSlideshow(
    //       autoPlayInterval: 300,
    //       height: 40.h,
    //       children: List.generate(banners.length, (index) {
    //         final VideoModel banner = banners[index];
    //         return Image.network(
    //           kImageAppendUrl + banner.image,
    //           fit: BoxFit.cover,
    //         );
    //       }),
    //     ),
    //     Positioned(
    //       bottom: 5,
    //       right: 0,
    //       left: 0,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           Column(
    //             children: [
    //               Icon(
    //                 Icons.add_outlined,
    //                 color: kWhite,
    //                 size: 22.sp,
    //               ),
    //               kHeight5,
    //               Text(
    //                 'My List',
    //                 style: TextUtils.theme(context).bodyText2,
    //               ),
    //             ],
    //           ),
    //           MaterialButton(
    //               onPressed: () {},
    //               color: kWhite,
    //               height: 30,
    //               child: Row(
    //                 children: [
    //                   Icon(
    //                     Icons.play_arrow,
    //                     size: 22.sp,
    //                     color: secondaryColor,
    //                   ),
    //                   kWidth5,
    //                   Text(
    //                     'Play',
    //                     style: TextUtils.theme(context).bodyText1?.copyWith(
    //                         color: secondaryColor, fontWeight: FontWeight.w600),
    //                   )
    //                 ],
    //               )),
    //           Column(
    //             children: [
    //               Icon(
    //                 Icons.info_outline,
    //                 color: kWhite,
    //                 size: 22.sp,
    //               ),
    //               kHeight5,
    //               Text(
    //                 'Info',
    //                 style: TextUtils.theme(context).bodyText2,
    //               ),
    //             ],
    //           ),
    //         ],
    //       ),
    //     ),
    //   ],
    // );
  }
}
