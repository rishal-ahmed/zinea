import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';
import 'package:zinea/presentation/screens/home/widgets/home_card_widget.dart';

class HomeTitleHorizontalListWidget extends StatelessWidget {
  const HomeTitleHorizontalListWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 1.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextUtils.headlineMedium,
          ),
          dHeight1,
          LimitedBox(
            maxHeight: 20.h,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const HomeCardWidget();
              },
              separatorBuilder: (context, index) {
                return dWidth2;
              },
              itemCount: 10,
            ),
          )
        ],
      ),
    );
  }
}
