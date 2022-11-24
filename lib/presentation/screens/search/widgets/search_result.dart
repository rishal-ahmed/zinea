import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/sizes.dart';
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
        Text('Movies & TV', style: TextUtils.headlineMedium),
        dHeight1,
        Expanded(
          child: Consumer(
            builder: (context, ref, _) {
              // if (state.isLoading) {
              //   return const Center(child: CircularProgressIndicator());
              // } else if (state.isError) {
              //   return const Center(child: Text('Something went wrong!'));
              // } else if (state.searchResultList.isEmpty) {
              //   return const Center(child: Text('No results found!'));
              // }

              return GridView.builder(
                itemBuilder: (BuildContext context, int index) {
                  // final String? moviePoster =
                  //     state.searchResultList[index].posterImageUrl;
                  return const SearchResultItemWidget(
                    imageUrl: '',
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 2.w,
                  crossAxisSpacing: 2.w,
                  childAspectRatio: 1 / 1.2,
                ),
                itemCount: 10,
              );
            },
          ),
        )
      ],
    );
  }
}
