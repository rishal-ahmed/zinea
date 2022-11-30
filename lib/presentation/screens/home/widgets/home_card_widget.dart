import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/endpoints.dart';
import 'package:zinea/domain/models/video/video_model.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({
    Key? key,
    required this.video,
  }) : super(key: key);

  final VideoModel video;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 27.w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(kImageAppendUrl + video.image))),
    );
  }
}
