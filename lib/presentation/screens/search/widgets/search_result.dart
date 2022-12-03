import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/application/search/search_state.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/search/search_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/screens/search/widgets/search_result_item_widget.dart';

class SearchResultWidget extends StatelessWidget {
  const SearchResultWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dHeight05,
        Text('Movies & TV', style: TextUtils.theme(context).titleLarge),
        dHeight1,
        Expanded(
          child: Consumer(
            builder: (context, ref, _) {
              final SearchState state =
                  ref.watch(SearchProvider.searchProvider);

              final List<VideoModel> videos =
                  state.isLoading ? [] : state.videos;

              return GridView.builder(
                itemBuilder: (BuildContext context, int index) {
                  final VideoModel? video =
                      state.isLoading ? null : videos[index];
                  return SearchResultItemWidget(
                    shimmer: state.isLoading,
                    video: video,
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2.w,
                  crossAxisSpacing: 2.w,
                  childAspectRatio: 1 / 1.2,
                ),
                itemCount: state.isLoading ? 20 : state.videos.length,
              );
            },
          ),
        )
      ],
    );
  }
}
