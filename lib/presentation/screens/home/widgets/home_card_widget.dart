import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_widget.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key? key,
    required this.video,
  }) : super(key: key);

  final VideoModel video;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Image.network(
        kImageAppendUrl + video.image,
        width: 27.w,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress?.cumulativeBytesLoaded !=
              loadingProgress?.expectedTotalBytes) {
            return ShimmerWidget(width: 27.w, height: double.infinity);
          }
          return child;
        },
      ),
    );
  }
}
