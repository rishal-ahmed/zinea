import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zinea/core/constants/sizes.dart';
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
        Text('Top Searches', style: TextUtils.headlineMedium),
        dHeight1,
        Expanded(
          child: Consumer(
            builder: (context, ref, _) {
              // if (state.isLoading) {
              //   return const Center(child: CircularProgressIndicator());
              // } else if (state.isError) {
              //   return const Center(child: Text('Something went wrong!'));
              // } else if (state.idleList.isEmpty) {
              //   return const Center(child: Text('No results found!'));
              // }
              return ListView.separated(
                itemBuilder: (ctx, index) {
                  return const SearchIdleItemWidget(
                    title: 'Rick and Morty',
                    imageUrl: '',
                  );
                },
                separatorBuilder: (ctx, index) => dHeight2,
                itemCount: 40,
              );
            },
          ),
        )
      ],
    );
  }
}
