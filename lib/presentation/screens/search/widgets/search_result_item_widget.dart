import 'package:flutter/material.dart';
import 'package:zinea/core/constants/endpoints.dart';
import 'package:zinea/core/routes/routes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/presentation/widgets/shimmer/shimmer_widget.dart';

class SearchResultItemWidget extends StatelessWidget {
  const SearchResultItemWidget(
      {Key? key, required this.video, this.shimmer = false})
      : super(key: key);

  final VideoModel? video;
  final bool shimmer;

  @override
  Widget build(BuildContext context) {
    return ShimmerWidget(
      isLoading: shimmer,
      width: double.infinity,
      height: double.infinity,
      child: InkWell(
        onTap: shimmer
            ? null
            : () {
                Navigator.pushNamed(context, routeInfo, arguments: video!.id);
              },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: !shimmer
                ? DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(kImageAppendUrl + video!.image))
                : null,
          ),
        ),
      ),
    );
  }
}
