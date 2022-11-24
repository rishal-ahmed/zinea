import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';

class SearchIdleItemWidget extends StatelessWidget {
  const SearchIdleItemWidget(
      {super.key, required this.title, required this.imageUrl});

  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 32.w,
          height: 16.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://www.themoviedb.org/t/p/w1280/cvhNj9eoRBe5SxjCbQTkh05UP5K.jpg'),
            ),
          ),
        ),
        dWidth2,
        Expanded(
          child: Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextUtils.bodytext1.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        CircleAvatar(
          radius: 16.sp,
          child: CircleAvatar(
            radius: 15.5.sp,
            backgroundColor: kBlack,
            child: FittedBox(
              child: Icon(
                Icons.play_arrow,
                size: 18.sp,
                color: kWhite,
              ),
            ),
          ),
        )
      ],
    );
  }
}
