import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/application/home/home_state.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/models/video/video_model.dart';
import 'package:zinea/domain/provider/search/search_provider.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/screens/search/widgets/search_idle_item_widget.dart';

class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        dHeight05,
        Text('Top Searches', style: TextUtils.theme(context).titleLarge),
        dHeight1,
        Expanded(
          child: Consumer(
            builder: (context, ref, _) {
              final HomeState state =
                  ref.watch(SearchProvider.topSearchProvider);

              final List<VideoModel> videos =
                  state.isLoading ? [] : state.homeContents[1];

              return ListView.separated(
                itemBuilder: (ctx, index) {
                  final VideoModel? video =
                      state.isLoading ? null : videos[index];
                  return SearchIdleItemWidget(
                    video: video,
                    shimmer: state.isLoading,
                  );
                },
                separatorBuilder: (ctx, index) => dHeight2,
                itemCount: state.isLoading ? 20 : videos.length,
              );
            },
          ),
        )
      ],
    );
  }
}
