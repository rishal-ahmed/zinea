import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:zinea/core/constants/colors.dart';
import 'package:zinea/core/constants/sizes.dart';
import 'package:zinea/domain/utils/text/text_utils.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: double.infinity,
            height: 70.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/5cnLoWq9o5tuLe1Zq4BTX4LwZ2B.jpg'),
                fit: BoxFit.cover,
              ),
            )),
        Positioned(
          bottom: 5,
          right: 0,
          left: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.add_outlined,
                    color: kWhite,
                    size: 22.sp,
                  ),
                  kHeight5,
                  Text(
                    'My List',
                    style: TextUtils.theme(context).bodyText2,
                  ),
                ],
              ),
              MaterialButton(
                  onPressed: () {},
                  color: kWhite,
                  height: 30,
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow,
                        size: 22.sp,
                        color: secondaryColor,
                      ),
                      kWidth5,
                      Text(
                        'Play',
                        style: TextUtils.theme(context).bodyText1?.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.w600),
                      )
                    ],
                  )),
              Column(
                children: [
                  Icon(
                    Icons.info_outline,
                    color: kWhite,
                    size: 22.sp,
                  ),
                  kHeight5,
                  Text(
                    'Info',
                    style: TextUtils.theme(context).bodyText2,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
